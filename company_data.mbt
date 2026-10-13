// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `company.buzz_adjective` from the configured locales.
pub fn Faker::company_buzz_adjective(self : Faker) -> String raise {
  self.sample("company.buzz_adjective")
}

///|
/// Sample `company.buzz_noun` from the configured locales.
pub fn Faker::company_buzz_noun(self : Faker) -> String raise {
  self.sample("company.buzz_noun")
}

///|
/// Sample `company.buzz_verb` from the configured locales.
pub fn Faker::company_buzz_verb(self : Faker) -> String raise {
  self.sample("company.buzz_verb")
}

///|
/// Sample `company.adjective` from the configured locales.
pub fn Faker::company_catch_phrase_adjective(self : Faker) -> String raise {
  self.sample("company.adjective")
}

///|
/// Sample `company.descriptor` from the configured locales.
pub fn Faker::company_catch_phrase_descriptor(self : Faker) -> String raise {
  self.sample("company.descriptor")
}

///|
/// Sample `company.noun` from the configured locales.
pub fn Faker::company_catch_phrase_noun(self : Faker) -> String raise {
  self.sample("company.noun")
}
