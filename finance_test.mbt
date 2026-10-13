///|
test "generated card numbers and IMEIs pass independent Luhn validation" {
  let f = @faker.Faker(seed=37)
  for _ in 0..<200 {
    assert_true(@faker.luhn_valid(f.finance_credit_card_number()))
    assert_true(@faker.luhn_valid(f.phone_imei()))
  }
  assert_true(@faker.luhn_valid("79927398713"))
  assert_false(@faker.luhn_valid("79927398714"))
  assert_false(@faker.luhn_valid(""))
  assert_false(@faker.luhn_valid("abc"))
}

///|
test "IBAN mod 97 and UPC check digits" {
  let f = @faker.Faker(seed=123)
  for _ in 0..<100 {
    let iban = f.finance_iban()
    let moved = iban[4:].to_owned() + iban[:4].to_owned()
    let digits = StringBuilder()
    for c in moved {
      if c is ('A'..<='Z') {
        digits.write_string((c.to_int() - 55).to_string())
      } else {
        digits.write_char(c)
      }
    }
    let mut remainder = 0
    for c in digits.to_string() {
      remainder = (remainder * 10 + c.to_int() - 48) % 97
    }
    assert_eq(remainder, 1)
    let upc = f.commerce_upc()
    assert_eq(upc.length(), 12)
    let mut checksum = 0
    for i, c in upc.to_array() {
      checksum += (c.to_int() - 48) * (if i % 2 == 0 { 3 } else { 1 })
    }
    assert_eq(checksum % 10, 0)
  }
}
