// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `hacker.abbreviation` from the configured locales.
pub fn Faker::hacker_abbreviation(self : Faker) -> String raise {
  self.sample("hacker.abbreviation")
}

///|
/// Sample `hacker.adjective` from the configured locales.
pub fn Faker::hacker_adjective(self : Faker) -> String raise {
  self.sample("hacker.adjective")
}

///|
/// Sample `hacker.ingverb` from the configured locales.
pub fn Faker::hacker_ingverb(self : Faker) -> String raise {
  self.sample("hacker.ingverb")
}

///|
/// Sample `hacker.noun` from the configured locales.
pub fn Faker::hacker_noun(self : Faker) -> String raise {
  self.sample("hacker.noun")
}

///|
/// Sample `hacker.verb` from the configured locales.
pub fn Faker::hacker_verb(self : Faker) -> String raise {
  self.sample("hacker.verb")
}
