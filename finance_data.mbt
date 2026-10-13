// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `finance.currency` from the configured locales.
pub fn Faker::finance_currency(self : Faker) -> Currency raise {
  let value = self.sample_json("finance.currency")
  {
    name: json_string(json_field(value, "name")),
    code: json_string(json_field(value, "code")),
    symbol: json_string(json_field(value, "symbol")),
    numeric_code: json_string(json_field(value, "numericCode")),
  }
}

///|
/// Sample `finance.transaction_type` from the configured locales.
pub fn Faker::finance_transaction_type(self : Faker) -> String raise {
  self.sample("finance.transaction_type")
}
