///|
fn replace_placeholder(
  template : String,
  key : String,
  generate : () -> String raise,
) -> String raise {
  let token = "{{" + key + "}}"
  let parts = template.split(token).to_array()
  let out = StringBuilder()
  for i, part in parts {
    if i > 0 {
      out.write_string(generate())
    }
    out.write_string(part.to_owned())
  }
  out.to_string()
}

///|
/// Substitute placeholders without evaluating code. Unknown keys remain intact.
pub fn mustache(
  template : String,
  values : Map[String, () -> String raise],
) -> String raise {
  let mut result = template
  for key, generate in values {
    result = replace_placeholder(result, key, generate)
  }
  result
}

///|
fn Faker::pattern(self : Faker, path : String) -> String raise {
  let pattern = match self.definition(path) {
    String(s) => s
    Array(values) => json_string(self.array_element(values))
    _ => raise InvalidDefinition(path)
  }
  self.fake(pattern)
}

///|
/// Expand Faker method and locale placeholders. Only supported method names and
/// JSON arguments are accepted; this never evaluates JavaScript.
pub fn Faker::fake(self : Faker, template : String) -> String raise {
  guard self.template_depth < 32 else {
    raise InvalidArgument("template recursion limit exceeded")
  }
  self.template_depth += 1
  defer {
    self.template_depth -= 1
  }
  self.render_template(template)
}

///|
fn Faker::render_template(self : Faker, template : String) -> String raise {
  let out = StringBuilder()
  let mut rest = template
  while rest.split_once("{{") is Some((before, after)) {
    out.write_string(before.to_owned())
    guard after.split_once("}}") is Some((key, tail)) else {
      raise InvalidArgument("unclosed template placeholder")
    }
    out.write_string(self.template_value(key.trim().to_owned()))
    rest = tail.to_owned()
  }
  out.write_string(rest)
  out.to_string()
}

///|
fn Faker::template_value(self : Faker, key : String) -> String raise {
  if key.split_once("(") is Some((method_name, args)) {
    guard args.strip_suffix(")") is Some(args) else {
      raise InvalidArgument("invalid template arguments")
    }
    let args = @json.parse(args)
    match method_name {
      "number.int" => {
        let low = match args {
          { "min": Number(n, ..), .. } => n.to_int()
          _ => 0
        }
        let high = match args {
          { "max": Number(n, ..), .. } => n.to_int()
          Number(n, ..) => n.to_int()
          _ => 2147483647
        }
        return self.int(min=low, max=high).to_string()
      }
      "helpers.arrayElement" => {
        guard args is Array(values) else {
          raise InvalidArgument("arrayElement expects an array")
        }
        return json_string(self.array_element(values))
      }
      "string.numeric" => return self.numeric(length=json_int(args))
      "location.state" =>
        return self.location_state(
          abbreviated=args is { "abbreviated": True, .. },
        )
      _ => raise InvalidArgument("unsupported template call: " + key)
    }
  }
  // Upstream resolves both the method and raw definition before invoking the
  // method; same-named raw arrays consume a draw even when the method wins.
  if template_has_method(key) {
    if self.optional_definition(key) is Some(Array(values)) {
      ignore(self.array_element(values))
    }
  }
  match self.dispatch_template(key) {
    Some(value) => value
    None =>
      match self.definition(key) {
        String(s) => self.fake(s)
        Array(xs) => self.fake(json_string(self.array_element(xs)))
        _ => raise InvalidDefinition(key)
      }
  }
}
