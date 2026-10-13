///|
pub(all) enum Sex {
  Female
  Male
  Generic
}

///|
pub fn Faker::person_sex_type(
  self : Faker,
  include_generic~ : Bool = false,
) -> Sex raise {
  self.array_element(
    if include_generic {
      [Female, Male, Generic]
    } else {
      [Female, Male]
    },
  )
}

///|
fn Faker::optional_definition(self : Faker, path : String) -> Json? {
  let parts = path.split(".").map(s => s.to_owned()).to_array()
  let entry = parts[:parts.length().min(2)].to_owned().join(".")
  let tail = parts[parts.length().min(2):].to_owned().join(".")
  for locale in self.locales {
    if locale.get(entry) is Some(value) {
      if tail == "" {
        return Some(value)
      }
      return Locale::from_json(value).get(tail)
    }
  }
  None
}

///|
fn Faker::person_entry(
  self : Faker,
  path : String,
  sex : Sex?,
) -> Array[Json] raise {
  let sex = sex.unwrap_or_else(() => self.person_sex_type())
  fn entries(key : String) -> Array[Json]? {
    match self.optional_definition(path + "." + key) {
      Some(Array(xs)) => Some(xs)
      _ => None
    }
  }
  let generic = entries("generic")
  match sex {
    Generic =>
      generic.unwrap_or_else(() => {
        self.array_element([entries("female"), entries("male")]).unwrap_or([])
      })
    Female | Male => {
      let binary = entries(if sex is Female { "female" } else { "male" })
      match (binary, generic) {
        (Some(xs), Some(ys)) =>
          self.weighted_array_element([
            (3 * xs.length().to_double().sqrt(), xs),
            (ys.length().to_double().sqrt(), ys),
          ])
        (Some(xs), _) | (_, Some(xs)) => xs
        _ => raise MissingDefinition(path)
      }
    }
  }
}

///|
pub fn Faker::person_first_name(self : Faker, sex? : Sex) -> String raise {
  json_string(self.array_element(self.person_entry("person.first_name", sex)))
}

///|
pub fn Faker::person_last_name(self : Faker, sex? : Sex) -> String raise {
  if self.optional_definition("person.last_name_pattern") is Some(Object(_)) {
    return self.fake(
      self.weighted_pattern(self.person_entry("person.last_name_pattern", sex)),
    )
  }
  json_string(self.array_element(self.person_entry("person.last_name", sex)))
}

///|
pub fn Faker::person_middle_name(self : Faker, sex? : Sex) -> String raise {
  json_string(self.array_element(self.person_entry("person.middle_name", sex)))
}

///|
pub fn Faker::person_prefix(self : Faker, sex? : Sex) -> String raise {
  json_string(self.array_element(self.person_entry("person.prefix", sex)))
}

///|
fn Faker::weighted_pattern(self : Faker, values : Array[Json]) -> String raise {
  self.weighted_array_element(
    values.map(value => {
      let weight = match json_field(value, "weight") {
        Number(n, ..) => n
        _ => raise InvalidDefinition("weight")
      }
      (weight, json_string(json_field(value, "value")))
    }),
  )
}

///|
pub fn Faker::person_full_name(
  self : Faker,
  first_name? : String,
  last_name? : String,
  sex? : Sex,
) -> String raise {
  let sex = sex.unwrap_or_else(() => self.person_sex_type())
  let first_name = first_name.unwrap_or_else(() => self.person_first_name(sex~))
  let last_name = last_name.unwrap_or_else(() => self.person_last_name(sex~))
  guard self.definition("person.name") is Array(patterns) else {
    raise InvalidDefinition("person.name")
  }
  let mut pattern = self.weighted_pattern(patterns)
  // Preserve upstream evaluation order even if a locale rearranges these tokens.
  for
    (key, generate) in [
      ("person.prefix", () => self.person_prefix(sex~)),
      ("person.firstName", () => first_name),
      ("person.middleName", () => self.person_middle_name(sex~)),
      ("person.lastName", () => last_name),
      ("person.suffix", () => self.person_suffix()),
    ] {
    pattern = replace_placeholder(pattern, key, generate)
  }
  pattern
}
