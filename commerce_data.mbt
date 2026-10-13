// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `commerce.department` from the configured locales.
pub fn Faker::commerce_department(self : Faker) -> String raise {
  self.sample("commerce.department")
}

///|
/// Sample `commerce.product_name.adjective` from the configured locales.
pub fn Faker::commerce_product_adjective(self : Faker) -> String raise {
  self.sample("commerce.product_name.adjective")
}

///|
/// Sample `commerce.product_name.material` from the configured locales.
pub fn Faker::commerce_product_material(self : Faker) -> String raise {
  self.sample("commerce.product_name.material")
}

///|
/// Sample `commerce.product_name.product` from the configured locales.
pub fn Faker::commerce_product(self : Faker) -> String raise {
  self.sample("commerce.product_name.product")
}
