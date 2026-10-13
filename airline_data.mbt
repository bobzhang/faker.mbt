// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `airline.airline` from the configured locales.
pub fn Faker::airline_airline(self : Faker) -> Airline raise {
  let value = self.sample_json("airline.airline")
  {
    name: json_string(json_field(value, "name")),
    iata_code: json_string(json_field(value, "iataCode")),
  }
}

///|
/// Sample `airline.airplane` from the configured locales.
pub fn Faker::airline_airplane(self : Faker) -> Airplane raise {
  let value = self.sample_json("airline.airplane")
  {
    name: json_string(json_field(value, "name")),
    iata_type_code: json_string(json_field(value, "iataTypeCode")),
  }
}

///|
/// Sample `airline.airport` from the configured locales.
pub fn Faker::airline_airport(self : Faker) -> Airport raise {
  let value = self.sample_json("airline.airport")
  {
    name: json_string(json_field(value, "name")),
    iata_code: json_string(json_field(value, "iataCode")),
  }
}
