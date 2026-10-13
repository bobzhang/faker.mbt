///|
pub fn Faker::location_state(
  self : Faker,
  abbreviated~ : Bool = false,
) -> String raise {
  self.sample(
    if abbreviated {
      "location.state_abbr"
    } else {
      "location.state"
    },
  )
}

///|
pub fn Faker::location_country_code(
  self : Faker,
  variant~ : String = "alpha2",
) -> String raise {
  guard variant == "alpha2" || variant == "alpha3" || variant == "numeric" else {
    raise InvalidArgument("invalid country code variant")
  }
  json_string(json_field(self.sample_json("location.country_code"), variant))
}

///|
pub fn Faker::location_cardinal_direction(
  self : Faker,
  abbreviated~ : Bool = false,
) -> String raise {
  self.sample(
    "location.direction.cardinal" + (if abbreviated { "_abbr" } else { "" }),
  )
}

///|
pub fn Faker::location_ordinal_direction(
  self : Faker,
  abbreviated~ : Bool = false,
) -> String raise {
  self.sample(
    "location.direction.ordinal" + (if abbreviated { "_abbr" } else { "" }),
  )
}

///|
pub fn Faker::location_direction(
  self : Faker,
  abbreviated~ : Bool = false,
) -> String raise {
  let suffix = if abbreviated { "_abbr" } else { "" }
  let values = self.strings("location.direction.cardinal" + suffix)
  values.append(self.strings("location.direction.ordinal" + suffix))
  self.array_element(values)
}

///|
fn Faker::number_groups(self : Faker, pattern : String) -> String raise {
  let chars = pattern.to_array()
  let out = StringBuilder()
  let mut i = 0
  while i < chars.length() {
    if chars[i] == '#' {
      let start = i
      while i < chars.length() && chars[i] == '#' {
        i += 1
      }
      out.write_string(
        self.numeric(length=i - start, allow_leading_zeros=false),
      )
    } else {
      out.write_char(chars[i])
      i += 1
    }
  }
  out.to_string()
}

///|
pub fn Faker::location_building_number(self : Faker) -> String raise {
  self.number_groups(self.sample("location.building_number"))
}

///|
pub fn Faker::location_secondary_address(self : Faker) -> String raise {
  self.number_groups(self.pattern("location.secondary_address"))
}

///|
pub fn Faker::location_street_address(
  self : Faker,
  full~ : Bool = false,
) -> String raise {
  self.pattern(
    "location.street_address." + (if full { "full" } else { "normal" }),
  )
}

///|
pub fn Faker::location_zip_code(
  self : Faker,
  format? : String,
  state? : String,
) -> String raise {
  if state is Some(state) {
    return self.pattern("location.postcode_by_state." + state)
  }
  let format = format.unwrap_or_else(() => {
    match self.definition("location.postcode") {
      String(s) => s
      Array(xs) => json_string(self.array_element(xs))
      _ => raise InvalidDefinition("location.postcode")
    }
  })
  self.replace_symbols(format)
}

///|
pub fn Faker::location_latitude(
  self : Faker,
  min~ : Double = -90,
  max~ : Double = 90,
  precision~ : Int32 = 4,
) -> Double raise {
  self.float(min~, max~, fraction_digits=precision)
}

///|
pub fn Faker::location_longitude(
  self : Faker,
  min~ : Double = -180,
  max~ : Double = 180,
  precision~ : Int32 = 4,
) -> Double raise {
  self.float(min~, max~, fraction_digits=precision)
}
