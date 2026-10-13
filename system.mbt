///|
fn Faker::mime_types(self : Faker) -> Map[String, Json] raise {
  match self.definition("system.mime_type") {
    Object(fields) => fields
    _ => raise InvalidDefinition("system.mime_type")
  }
}

///|
pub fn Faker::system_mime_type(self : Faker) -> String raise {
  self.array_element(self.mime_types().keys().to_array())
}

///|
pub fn Faker::system_file_type(self : Faker) -> String raise {
  let types : Array[String] = []
  for key, _ in self.mime_types() {
    let group = key.split("/").next().unwrap().to_owned()
    if !types.contains(group) {
      types.push(group)
    }
  }
  self.array_element(types)
}

///|
pub fn Faker::system_file_ext(
  self : Faker,
  mime_type? : String,
) -> String raise {
  let types = self.mime_types()
  if mime_type is Some(key) {
    guard types.get(key) is Some({ "extensions": Array(values), .. }) else {
      raise InvalidArgument("unsupported MIME type: " + key)
    }
    return json_string(self.array_element(values))
  }
  let extensions : Array[String] = []
  for _, value in types {
    if value is { "extensions": Array(values), .. } {
      for value in values {
        let ext = json_string(value)
        if !extensions.contains(ext) {
          extensions.push(ext)
        }
      }
    }
  }
  self.array_element(extensions)
}

///|
pub fn Faker::system_common_file_ext(self : Faker) -> String raise {
  self.system_file_ext(
    mime_type=self.array_element([
      "application/pdf", "audio/mpeg", "audio/wav", "image/png", "image/jpeg", "image/gif",
      "video/mp4", "video/mpeg", "text/html",
    ]),
  )
}

///|
pub fn Faker::system_common_file_type(self : Faker) -> String raise {
  self.array_element(["video", "audio", "image", "text", "application"])
}

///|
pub fn Faker::system_file_name(
  self : Faker,
  extension_count~ : Int32 = 1,
) -> String raise {
  let name = String::from_array(
    @unicode.lower(self.word_words())
    .to_array()
    .map(c => if c is ('a'..<='z' | '0'..<='9' | '_') { c } else { '_' }),
  )
  let suffix = multiple(_ => self.system_file_ext(), count=extension_count).join(
    ".",
  )
  if suffix == "" {
    name
  } else {
    name + "." + suffix
  }
}

///|
pub fn Faker::system_common_file_name(
  self : Faker,
  extension? : String,
) -> String raise {
  let name = self.system_file_name(extension_count=0)
  let ext = match extension {
    Some(s) if s != "" => s
    _ => self.system_common_file_ext()
  }
  name + "." + ext
}

///|
pub fn Faker::system_directory_path(self : Faker) -> String raise {
  self.sample("system.directory_path")
}

///|
pub fn Faker::system_file_path(self : Faker) -> String raise {
  self.system_directory_path() + "/" + self.system_file_name()
}

///|
pub fn Faker::system_semver(self : Faker) -> String raise {
  "\{self.int(max=9)}.\{self.int(max=20)}.\{self.int(max=20)}"
}

///|
pub fn Faker::system_cron(
  self : Faker,
  include_year~ : Bool = false,
  include_non_standard~ : Bool = false,
) -> String raise {
  let minutes = [self.int(max=59).to_string(), "*"]
  let hours = [self.int(max=23).to_string(), "*"]
  let days = [self.int(min=1, max=31).to_string(), "*", "?"]
  let months = [self.int(min=1, max=12).to_string(), "*"]
  let weekdays = [
    self.int(max=6).to_string(),
    self.array_element(["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]),
    "*",
    "?",
  ]
  let years = [self.int(min=1970, max=2099).to_string(), "*"]
  let result = [
    self.array_element(minutes),
    self.array_element(hours),
    self.array_element(days),
    self.array_element(months),
    self.array_element(weekdays),
  ]
  let year = self.array_element(years)
  if include_year {
    result.push(year)
  }
  if !include_non_standard || self.boolean() {
    result.join(" ")
  } else {
    self.array_element([
      "@annually", "@daily", "@hourly", "@monthly", "@reboot", "@weekly", "@yearly",
    ])
  }
}

///|
pub fn Faker::system_network_interface(
  self : Faker,
  interface_type? : String,
  schema? : String,
) -> String raise {
  let kind = interface_type.unwrap_or_else(() => {
    self.array_element(["en", "wl", "ww"])
  })
  let schema = schema.unwrap_or_else(() => {
    self.array_element(["index", "slot", "mac", "pci"])
  })
  fn optional_suffix(letter : String) -> String raise {
    if self.boolean() {
      letter + self.numeric()
    } else {
      ""
    }
  }
  match schema {
    "index" => kind + "o" + self.numeric()
    "slot" =>
      kind + "s" + self.numeric() + optional_suffix("f") + optional_suffix("d")
    "mac" => kind + "x" + self.internet_mac(separator="")
    "pci" => {
      let prefix = optional_suffix("P")
      prefix +
      kind +
      "p" +
      self.numeric() +
      "s" +
      self.numeric() +
      optional_suffix("f") +
      optional_suffix("d")
    }
    _ => raise InvalidArgument("invalid interface schema")
  }
}

///|
pub fn Faker::database_mongodb_object_id(self : Faker) -> String raise {
  self.hexadecimal(length=24, prefix="", casing=Lower)
}
