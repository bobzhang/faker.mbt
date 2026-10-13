// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `location.continent` from the configured locales.
pub fn Faker::location_continent(self : Faker) -> String raise {
  self.sample("location.continent")
}

///|
/// Sample `location.country` from the configured locales.
pub fn Faker::location_country(self : Faker) -> String raise {
  self.sample("location.country")
}

///|
/// Sample `location.county` from the configured locales.
pub fn Faker::location_county(self : Faker) -> String raise {
  self.sample("location.county")
}

///|
/// Sample `location.language` from the configured locales.
pub fn Faker::location_language(self : Faker) -> Language raise {
  let value = self.sample_json("location.language")
  {
    name: json_string(json_field(value, "name")),
    alpha2: json_string(json_field(value, "alpha2")),
    alpha3: json_string(json_field(value, "alpha3")),
  }
}

///|
/// Sample `location.time_zone` from the configured locales.
pub fn Faker::location_time_zone(self : Faker) -> String raise {
  self.sample("location.time_zone")
}
