///|
pub fn[T] Faker::array_element(self : Faker, values : ArrayView[T]) -> T raise {
  guard !values.is_empty() else {
    raise InvalidArgument("cannot sample an empty array")
  }
  values[self.int(max=values.length() - 1)]
}

///|
pub fn[T] Faker::shuffle(self : Faker, values : ArrayView[T]) -> Array[T] raise {
  let result = values.to_owned()
  for i = result.length() - 1; i > 0; i = i - 1 {
    let j = self.int(max=i)
    let tmp = result[i]
    result[i] = result[j]
    result[j] = tmp
  }
  result
}

///|
pub fn[T] Faker::array_elements(
  self : Faker,
  values : ArrayView[T],
  count? : Int32,
) -> Array[T] raise {
  if values.is_empty() {
    return []
  }
  let count = count.unwrap_or_else(() => self.int(min=1, max=values.length()))
  if count >= values.length() {
    return self.shuffle(values)
  }
  if count <= 0 {
    return []
  }
  let result = values.to_owned()
  let start = result.length() - count
  for i = result.length() - 1; i >= start; i = i - 1 {
    let j = self.int(max=i)
    let tmp = result[i]
    result[i] = result[j]
    result[j] = tmp
  }
  result[start:].to_owned()
}

///|
pub fn[T] Faker::array_samples(
  self : Faker,
  values : ArrayView[T],
  count~ : Int32 = 1,
) -> Array[T] raise {
  guard count >= 0 else { raise InvalidArgument("count must be nonnegative") }
  Array::makei(count, _ => self.array_element(values))
}

///|
pub fn[T] Faker::weighted_array_element(
  self : Faker,
  values : ArrayView[(Double, T)],
) -> T raise {
  guard !values.is_empty() else {
    raise InvalidArgument("weights must not be empty")
  }
  let mut total = 0.0
  for (weight, _) in values {
    guard weight > 0 && !weight.is_inf() else {
      raise InvalidArgument("weights must be finite and positive")
    }
    total += weight
  }
  guard !total.is_inf() else {
    raise InvalidArgument("weight sum must be finite")
  }
  let random = self.random() * total
  let mut cumulative = 0.0
  for (weight, value) in values {
    cumulative += weight
    if random < cumulative {
      return value
    }
  }
  values[values.length() - 1].1
}

///|
pub fn[T] Faker::maybe(
  self : Faker,
  generate : () -> T raise,
  probability~ : Double = 0.5,
) -> T? raise {
  if self.boolean(probability~) {
    Some(generate())
  } else {
    None
  }
}

///|
pub fn[T] multiple(
  generate : () -> T raise,
  count~ : Int32 = 3,
) -> Array[T] raise {
  guard count >= 0 else { raise InvalidArgument("count must be nonnegative") }
  Array::makei(count, _ => generate())
}

///|
pub fn[T : Eq] Faker::unique_array(
  self : Faker,
  values : ArrayView[T],
  count : Int32,
) -> Array[T] raise {
  let unique : Array[T] = []
  for value in values {
    if !unique.contains(value) {
      unique.push(value)
    }
  }
  self.array_elements(unique, count~)
}

///|
pub fn Faker::replace_symbols(self : Faker, template : String) -> String raise {
  let out = StringBuilder()
  for c in template {
    match c {
      '#' => out.write_string(self.int(max=9).to_string())
      '?' =>
        out.write_char(
          self.array_element("ABCDEFGHIJKLMNOPQRSTUVWXYZ".to_array()),
        )
      '*' =>
        if self.boolean() {
          out.write_char(
            self.array_element("ABCDEFGHIJKLMNOPQRSTUVWXYZ".to_array()),
          )
        } else {
          out.write_string(self.int(max=9).to_string())
        }
      _ => out.write_char(c)
    }
  }
  out.to_string()
}

///|
pub fn slugify(value : String) -> String {
  let out = StringBuilder()
  for c in value {
    if c == ' ' {
      out.write_char('-')
    } else if c is ('a'..<='z' | 'A'..<='Z' | '0'..<='9') ||
      c == '_' ||
      c == '-' ||
      c == '.' {
      out.write_char(c)
    }
  }
  out.to_string()
}

///|
pub fn[T] Faker::object_key(
  self : Faker,
  values : Map[String, T],
) -> String raise {
  self.array_element(values.keys().to_array())
}

///|
pub fn[T] Faker::object_value(self : Faker, values : Map[String, T]) -> T raise {
  values[self.object_key(values)]
}

///|
pub fn[T] Faker::object_entry(
  self : Faker,
  values : Map[String, T],
) -> (String, T) raise {
  let key = self.object_key(values)
  (key, values[key])
}

///|
/// Supply the enum's possible values explicitly in MoonBit.
pub fn[T] Faker::enum_value(self : Faker, variants : ArrayView[T]) -> T raise {
  self.array_element(variants)
}

///|
pub(all) enum NumberOrRange {
  Fixed(Int32)
  Range(min~ : Int32, max~ : Int32)
}

///|
pub fn Faker::range_to_number(
  self : Faker,
  range : NumberOrRange,
) -> Int32 raise {
  match range {
    Fixed(n) => n
    Range(min~, max~) => self.int(min~, max~)
  }
}
