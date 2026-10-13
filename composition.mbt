///|
pub fn Faker::company_buzz_phrase(self : Faker) -> String raise {
  "\{self.company_buzz_verb()} \{self.company_buzz_adjective()} \{self.company_buzz_noun()}"
}

///|
pub fn Faker::company_catch_phrase(self : Faker) -> String raise {
  "\{self.company_catch_phrase_adjective()} \{self.company_catch_phrase_descriptor()} \{self.company_catch_phrase_noun()}"
}

///|
pub fn Faker::vehicle_vehicle(self : Faker) -> String raise {
  "\{self.vehicle_manufacturer()} \{self.vehicle_model()}"
}

///|
pub fn Faker::vehicle_color(self : Faker) -> String raise {
  self.color_human()
}

///|
fn capitalize(value : String) -> String {
  match value.iter().next() {
    Some(first) =>
      first.to_string().to_upper() +
      value[first.to_string().length():].to_owned()
    None => ""
  }
}

///|
pub fn Faker::food_dish(self : Faker) -> String raise {
  let dish = if self.boolean() {
    self.pattern("food.dish_pattern")
  } else {
    self.sample("food.dish")
  }
  dish.split(" ").map(s => capitalize(s.to_owned())).to_array().join(" ")
}
