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
