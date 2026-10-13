// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `science.chemical_element` from the configured locales.
pub fn Faker::science_chemical_element(self : Faker) -> ChemicalElement raise {
  let value = self.sample_json("science.chemical_element")
  {
    symbol: json_string(json_field(value, "symbol")),
    name: json_string(json_field(value, "name")),
    atomic_number: json_int(json_field(value, "atomicNumber")),
  }
}

///|
/// Sample `science.unit` from the configured locales.
pub fn Faker::science_unit(self : Faker) -> ScienceUnit raise {
  let value = self.sample_json("science.unit")
  {
    name: json_string(json_field(value, "name")),
    symbol: json_string(json_field(value, "symbol")),
  }
}
