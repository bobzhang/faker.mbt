// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `food.adjective` from the configured locales.
pub fn Faker::food_adjective(self : Faker) -> String raise {
  self.sample("food.adjective")
}

///|
/// Sample `food.ethnic_category` from the configured locales.
pub fn Faker::food_ethnic_category(self : Faker) -> String raise {
  self.sample("food.ethnic_category")
}

///|
/// Sample `food.fruit` from the configured locales.
pub fn Faker::food_fruit(self : Faker) -> String raise {
  self.sample("food.fruit")
}

///|
/// Sample `food.ingredient` from the configured locales.
pub fn Faker::food_ingredient(self : Faker) -> String raise {
  self.sample("food.ingredient")
}

///|
/// Sample `food.meat` from the configured locales.
pub fn Faker::food_meat(self : Faker) -> String raise {
  self.sample("food.meat")
}

///|
/// Sample `food.spice` from the configured locales.
pub fn Faker::food_spice(self : Faker) -> String raise {
  self.sample("food.spice")
}

///|
/// Sample `food.vegetable` from the configured locales.
pub fn Faker::food_vegetable(self : Faker) -> String raise {
  self.sample("food.vegetable")
}
