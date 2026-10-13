///|
/// Locale definitions. Compose in descending precedence; explicit null disables
/// a definition instead of falling through to a fallback locale.
pub struct Locale {
  data : Json
}

///|
pub fn Locale::from_json(data : Json) -> Locale {
  { data, }
}

///|
pub fn Locale::parse(data : String) -> Locale raise {
  { data: @json.parse(data), }
}

///|
/// Read a dotted definition path, such as `person.first_name.female`.
pub fn Locale::get(self : Locale, path : String) -> Json? {
  let mut value = self.data
  for key in path.split(".") {
    match value {
      Object(fields) =>
        match fields.get(key.to_owned()) {
          Some(next) => value = next
          None => return None
        }
      Null => return Some(value)
      _ => return None
    }
  }
  Some(value)
}

///|
/// Merge locale entries in descending precedence, matching Faker mergeLocales.
/// Entry objects (such as person.first_name) are replaced whole, not deep-merged.
pub fn merge(locales : ArrayView[Locale]) -> Locale {
  let merged : Map[String, Json] = Map([])
  for locale in locales {
    if locale.data is Object(categories) {
      for name, category in categories {
        if category is Object(entries) {
          let fields : Map[String, Json] = match merged.get(name) {
            Some(Object(values)) => values
            _ => {}
          }
          for key, value in entries {
            if !fields.contains(key) {
              fields[key] = value
            }
          }
          merged[name] = Json::object(fields)
        }
      }
    }
  }
  Locale::from_json(Json::object(merged))
}
