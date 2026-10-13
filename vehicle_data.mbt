// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `vehicle.bicycle_type` from the configured locales.
pub fn Faker::vehicle_bicycle(self : Faker) -> String raise {
  self.sample("vehicle.bicycle_type")
}

///|
/// Sample `vehicle.fuel` from the configured locales.
pub fn Faker::vehicle_fuel(self : Faker) -> String raise {
  self.sample("vehicle.fuel")
}

///|
/// Sample `vehicle.manufacturer` from the configured locales.
pub fn Faker::vehicle_manufacturer(self : Faker) -> String raise {
  self.sample("vehicle.manufacturer")
}

///|
/// Sample `vehicle.model` from the configured locales.
pub fn Faker::vehicle_model(self : Faker) -> String raise {
  self.sample("vehicle.model")
}

///|
/// Sample `vehicle.type` from the configured locales.
pub fn Faker::vehicle_type(self : Faker) -> String raise {
  self.sample("vehicle.type")
}
