// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `color.human` from the configured locales.
pub fn Faker::color_human(self : Faker) -> String raise {
  self.sample("color.human")
}

///|
/// Sample `color.space` from the configured locales.
pub fn Faker::color_space(self : Faker) -> String raise {
  self.sample("color.space")
}
