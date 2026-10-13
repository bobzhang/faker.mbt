///|
pub fn Faker::internet_display_name(
  self : Faker,
  first_name? : String,
  last_name? : String,
) -> String raise {
  let first = first_name.unwrap_or_else(() => self.person_first_name())
  let last = last_name.unwrap_or_else(() => self.person_last_name())
  let separator = self.array_element([".", "_"])
  let n = self.int(max=99)
  let name = match self.int(max=2) {
    0 => "\{first}\{n}"
    1 => "\{first}\{separator}\{last}"
    _ => "\{first}\{separator}\{last}\{n}"
  }
  name.replace_all(old="'", new="").replace_all(old=" ", new="")
}

///|
pub fn Faker::internet_username(
  self : Faker,
  first_name? : String,
  last_name? : String,
) -> String raise {
  let first = first_name.unwrap_or_else(() => self.person_first_name())
  let last = last_name.unwrap_or_else(() => self.person_last_name())
  let separator = self.array_element([".", "_"])
  let n = self.int(max=99)
  let name = match
    self.int(max=if last_name is Some(s) && s != "" { 1 } else { 2 }) {
    0 => "\{first}\{separator}\{last}\{n}"
    1 => "\{first}\{separator}\{last}"
    _ => "\{first}\{n}"
  }
  @transliteration.username(name)
  .replace_all(old="'", new="")
  .replace_all(old=" ", new="")
}

///|
pub fn Faker::internet_email(
  self : Faker,
  first_name? : String,
  last_name? : String,
  provider? : String,
  allow_special_characters~ : Bool = false,
) -> String raise {
  let provider = provider.unwrap_or_else(() => {
    self.sample("internet.free_email")
  })
  let name = self.internet_username(first_name?, last_name?)
  let allowed = String::from_array(
    name
    .to_array()
    .filter(c => {
      c is ('a'..<='z' | 'A'..<='Z' | '0'..<='9' | '.' | '_' | '+' | '-')
    }),
  )
  let mut local_part = allowed[:allowed.length().min(50)].to_owned()
  if allow_special_characters {
    local_part = local_part.replace(
      old=self.from_characters("._-"),
      new=self.from_characters(".!#$%&'*+-/=?^_`{|}~"),
    )
  }
  while local_part.contains("..") {
    local_part = local_part.replace_all(old="..", new=".")
  }
  local_part.trim(chars=".").to_owned() + "@" + provider
}

///|
pub fn Faker::internet_example_email(
  self : Faker,
  first_name? : String,
  last_name? : String,
  allow_special_characters~ : Bool = false,
) -> String raise {
  self.internet_email(
    first_name?,
    last_name?,
    provider=self.sample("internet.example_email"),
    allow_special_characters~,
  )
}

///|
fn valid_domain_slug(value : String) -> Bool {
  let chars = value.to_array()
  chars.length() >= 2 &&
  chars[0] is ('a'..<='z' | 'A'..<='Z') &&
  chars[chars.length() - 1] is ('a'..<='z' | 'A'..<='Z') &&
  chars.all(c => c is ('a'..<='z' | 'A'..<='Z' | '-'))
}

///|
fn Faker::domain_slug(self : Faker, value : String) -> String raise {
  let value = slugify(value)
  if valid_domain_slug(value) {
    return value
  }
  let value = slugify(self.lorem_word())
  if valid_domain_slug(value) {
    value
  } else {
    self.alpha(casing=Lower, length=self.int(min=4, max=8))
  }
}

///|
pub fn Faker::internet_domain_word(self : Faker) -> String raise {
  let first = self.domain_slug(self.word_adjective())
  let second = self.domain_slug(self.word_noun())
  (first + "-" + second).to_lower()
}

///|
pub fn Faker::internet_domain_name(self : Faker) -> String raise {
  self.internet_domain_word() + "." + self.internet_domain_suffix()
}

///|
pub fn Faker::internet_url(
  self : Faker,
  protocol~ : String = "https",
  append_slash? : Bool,
) -> String raise {
  let append_slash = append_slash.unwrap_or_else(() => self.boolean())
  protocol +
  "://" +
  self.internet_domain_name() +
  (if append_slash { "/" } else { "" })
}

///|
pub fn Faker::internet_protocol(self : Faker) -> String raise {
  self.array_element(["http", "https"])
}

///|
pub fn Faker::internet_http_method(self : Faker) -> String raise {
  self.array_element(["GET", "POST", "PUT", "DELETE", "PATCH"])
}

///|
pub fn Faker::internet_port(self : Faker) -> Int32 raise {
  self.int(min=1, max=65535)
}

///|
fn Faker::grouped_value(
  self : Faker,
  path : String,
  types : Array[String]?,
) -> Json raise {
  guard self.definition(path) is Object(fields) else {
    raise InvalidDefinition(path)
  }
  let keys = types.unwrap_or_else(() => fields.keys().to_array())
  let key = self.array_element(keys)
  guard fields.get(key) is Some(Array(values)) else {
    raise MissingDefinition(path + "." + key)
  }
  self.array_element(values)
}

///|
pub fn Faker::internet_emoji(
  self : Faker,
  types? : Array[String],
) -> String raise {
  json_string(self.grouped_value("internet.emoji", types))
}

///|
pub fn Faker::internet_http_status_code(
  self : Faker,
  types? : Array[String],
) -> Int32 raise {
  json_int(self.grouped_value("internet.http_status_code", types))
}

///|
pub fn Faker::internet_user_agent(self : Faker) -> String raise {
  self.pattern("internet.user_agent_pattern")
}

///|
/// Generate a fake password; not suitable for actual credentials.
pub fn Faker::internet_password(
  self : Faker,
  length~ : Int32 = 15,
  memorable~ : Bool = false,
  prefix~ : String = "",
) -> String raise {
  let mut result = prefix
  while result.length() < length {
    let c = self.int(min=33, max=127).unsafe_to_char()
    let c = if memorable { c.to_string().to_lower() } else { c.to_string() }
    let consonants = "bcdfghjklmnpqrstvwxyz"
    let vowels = "aeiou"
    let accepted = if memorable {
      let last = result.iter().last().unwrap_or(' ')
      if consonants.contains_char(last) ||
        consonants.to_upper().contains_char(last) {
        vowels.contains(c)
      } else {
        consonants.contains(c)
      }
    } else {
      c.all(c => c is ('a'..<='z' | 'A'..<='Z' | '0'..<='9' | '_'))
    }
    if accepted {
      result += c
    }
  }
  result
}
