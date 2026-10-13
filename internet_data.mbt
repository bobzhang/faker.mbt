// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `internet.domain_suffix` from the configured locales.
pub fn Faker::internet_domain_suffix(self : Faker) -> String raise {
  self.sample("internet.domain_suffix")
}

///|
/// Sample `internet.jwt_algorithm` from the configured locales.
pub fn Faker::internet_jwt_algorithm(self : Faker) -> String raise {
  self.sample("internet.jwt_algorithm")
}
