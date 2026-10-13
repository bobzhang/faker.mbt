// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `person.gender` from the configured locales.
pub fn Faker::person_gender(self : Faker) -> String raise {
  self.sample("person.gender")
}

///|
/// Sample `person.job_area` from the configured locales.
pub fn Faker::person_job_area(self : Faker) -> String raise {
  self.sample("person.job_area")
}

///|
/// Sample `person.job_descriptor` from the configured locales.
pub fn Faker::person_job_descriptor(self : Faker) -> String raise {
  self.sample("person.job_descriptor")
}

///|
/// Sample `person.job_type` from the configured locales.
pub fn Faker::person_job_type(self : Faker) -> String raise {
  self.sample("person.job_type")
}

///|
/// Sample `person.sex` from the configured locales.
pub fn Faker::person_sex(self : Faker) -> String raise {
  self.sample("person.sex")
}

///|
/// Sample `person.suffix` from the configured locales.
pub fn Faker::person_suffix(self : Faker) -> String raise {
  self.sample("person.suffix")
}

///|
/// Sample `person.western_zodiac_sign` from the configured locales.
pub fn Faker::person_zodiac_sign(self : Faker) -> String raise {
  self.sample("person.western_zodiac_sign")
}
