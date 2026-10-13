///|
pub fn Faker::person_bio(self : Faker) -> String raise {
  self.pattern("person.bio_pattern")
}

///|
pub fn Faker::person_job_title(self : Faker) -> String raise {
  self.pattern("person.job_title_pattern")
}

///|
pub fn Faker::company_name(self : Faker) -> String raise {
  self.pattern("company.name_pattern")
}

///|
pub fn Faker::commerce_product_name(self : Faker) -> String raise {
  self.pattern("commerce.product_name.pattern")
}

///|
pub fn Faker::commerce_product_description(self : Faker) -> String raise {
  self.pattern("commerce.product_description")
}

///|
pub fn Faker::food_description(self : Faker) -> String raise {
  self.pattern("food.description_pattern")
}

///|
pub fn Faker::hacker_phrase(self : Faker) -> String raise {
  self.pattern("hacker.phrase")
}

///|
pub fn Faker::location_city(self : Faker) -> String raise {
  self.pattern("location.city_pattern")
}

///|
pub fn Faker::location_street(self : Faker) -> String raise {
  self.pattern("location.street_pattern")
}

///|
pub fn Faker::location_postal_address(self : Faker) -> String raise {
  self.pattern("location.postal_address")
}
