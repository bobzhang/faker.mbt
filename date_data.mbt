// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `date.time_zone` from the configured locales.
pub fn Faker::date_time_zone(self : Faker) -> String raise {
  self.sample("date.time_zone")
}
