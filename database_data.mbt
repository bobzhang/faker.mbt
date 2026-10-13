// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `database.collation` from the configured locales.
pub fn Faker::database_collation(self : Faker) -> String raise {
  self.sample("database.collation")
}

///|
/// Sample `database.column` from the configured locales.
pub fn Faker::database_column(self : Faker) -> String raise {
  self.sample("database.column")
}

///|
/// Sample `database.engine` from the configured locales.
pub fn Faker::database_engine(self : Faker) -> String raise {
  self.sample("database.engine")
}

///|
/// Sample `database.type` from the configured locales.
pub fn Faker::database_type(self : Faker) -> String raise {
  self.sample("database.type")
}
