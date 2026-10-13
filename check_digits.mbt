///|
pub fn luhn_valid(value : String) -> Bool {
  let digits = value.to_array().filter(c => c != ' ' && c != '-')
  if digits.is_empty() || !digits.all(c => c is ('0'..<='9')) {
    return false
  }
  let mut sum = 0
  for i, c in digits {
    let n = c.to_int() - 48
    let n = if (digits.length() - 1 - i) % 2 == 1 { n * 2 } else { n }
    sum += if n > 9 { n - 9 } else { n }
  }
  sum % 10 == 0
}

///|
fn luhn_digit(body : String) -> String {
  for n in 0..<=9 {
    if luhn_valid(body + n.to_string()) {
      return n.to_string()
    }
  }
  "0"
}

///|
pub fn Faker::replace_credit_card_symbols(
  self : Faker,
  pattern~ : String = "6453-####-####-####-###L",
  symbol~ : Char = '#',
) -> String raise {
  let tokens = tokenize_pattern(pattern)
  // Legacy card patterns first expand repetitions, then numeric ranges.
  for token in tokens {
    if !token.character_class {
      token.output = Some(
        token.choices.repeat(self.repetitions(token.quantifier)),
      )
    }
  }
  for token in tokens {
    if token.character_class {
      guard token.choices.split_once("-") is Some((low, high)) else {
        raise InvalidArgument("card ranges must be numeric")
      }
      let low = decimal(low.to_owned())
      let high = decimal(high.to_owned())
      token.output = Some(
        self.int(min=low.min(high), max=low.max(high)).to_string(),
      )
    }
  }
  let expanded = tokens.map(t => t.output.unwrap()).join("")
  let out = StringBuilder()
  for c in expanded {
    if c == symbol {
      out.write_string(self.int(max=9).to_string())
    } else if c == '!' {
      out.write_string(self.int(min=2, max=9).to_string())
    } else {
      out.write_char(c)
    }
  }
  let result = out.to_string()
  let body = result.strip_suffix("L").unwrap_or(result[:]).to_owned()
  result.replace(old="L", new=luhn_digit(body))
}

///|
pub fn Faker::finance_credit_card_issuer(self : Faker) -> String raise {
  guard self.definition("finance.credit_card") is Object(fields) else {
    raise InvalidDefinition("credit_card")
  }
  self.array_element(fields.keys().to_array())
}

///|
pub fn Faker::finance_credit_card_number(
  self : Faker,
  issuer~ : String = "",
) -> String raise {
  guard self.definition("finance.credit_card") is Object(fields) else {
    raise InvalidDefinition("credit_card")
  }
  let format = if fields.get(issuer.to_lower()) is Some(value) {
    self.array_element(json_strings(value))
  } else if issuer.contains("#") {
    issuer
  } else {
    self.array_element(
      json_strings(fields[self.array_element(fields.keys().to_array())]),
    )
  }
  self.replace_credit_card_symbols(pattern=format.replace_all(old="/", new=""))
}

///|
pub fn Faker::phone_imei(self : Faker) -> String raise {
  self.replace_credit_card_symbols(pattern="##-######-######-L")
}

///|
pub fn Faker::finance_vat_number(
  self : Faker,
  country_code? : String,
) -> String raise {
  guard vat_formats is Object(formats) else {
    raise InvalidDefinition("VAT formats")
  }
  let country = country_code.unwrap_or_else(() => {
    // `GR` duplicates `EL`; upstream leaves it out so Greece is not drawn twice.
    self.array_element(formats.keys().filter(code => code != "GR").to_array())
  })
  guard formats.get(country) is Some(value) else {
    raise InvalidArgument("unsupported VAT country")
  }
  let pattern = match value {
    String(s) => s
    _ => self.array_element(json_strings(value))
  }
  self.from_reg_exp(pattern)
}

///|
pub fn Faker::commerce_upc(self : Faker, prefix~ : String = "") -> String raise {
  guard prefix.length() <= 11 && prefix.all(c => c is ('0'..<='9')) else {
    raise InvalidArgument("UPC prefix must be at most 11 digits")
  }
  let body = prefix + self.numeric(length=11 - prefix.length())
  let mut sum = 0
  for i, c in body.to_array() {
    sum += (c.to_int() - 48) * (if i % 2 == 0 { 3 } else { 1 })
  }
  body + ((10 - sum % 10) % 10).to_string()
}

///|
pub fn Faker::commerce_isbn(
  self : Faker,
  variant~ : Int32 = 13,
  separator~ : String = "-",
) -> String raise {
  guard variant == 10 || variant == 13 else {
    raise InvalidArgument("ISBN variant must be 10 or 13")
  }
  let group = self.array_element(["0", "1"])
  let element = self.numeric(length=8)
  let value = decimal(element[:7].to_owned())
  guard json_field(isbn_rules, group) is Array(rules) else {
    raise InvalidDefinition("ISBN rules")
  }
  let mut length = 7
  for rule in rules {
    if rule is Array([Number(max, ..), Number(n, ..)]) &&
      value.to_double() <= max {
      length = n.to_int()
      break
    }
  }
  let parts = if variant == 13 { ["978"] } else { [] }
  parts.append([group, element[:length].to_owned(), element[length:].to_owned()])
  let body = parts.join("")
  let mut sum = 0
  for i, c in body.to_array() {
    sum += (c.to_int() - 48) *
      (if variant == 10 { i + 1 } else if i % 2 == 1 { 3 } else { 1 })
  }
  let check = if variant == 10 { sum % 11 } else { (10 - sum % 10) % 10 }
  parts.push(if check == 10 { "X" } else { check.to_string() })
  parts.join(separator)
}

///|
pub fn Faker::vehicle_vin(self : Faker) -> String raise {
  let vin = self.alphanumeric(length=10, casing=Upper, exclude="OIQ") +
    self.alpha(casing=Upper, exclude="OIQ") +
    self.alphanumeric(casing=Upper, exclude="OIQ") +
    self.numeric(length=5)
  let weights = [8, 7, 6, 5, 4, 3, 2, 10, 0, 9, 8, 7, 6, 5, 4, 3, 2]
  let mut sum = 0
  for i, c in vin.to_array() {
    let value = match c {
      'A'..<='H' => c.to_int() - 64
      'J'..<='N' => c.to_int() - 73
      'P' => 7
      'R' => 9
      'S'..<='Z' => c.to_int() - 81
      _ => c.to_int() - 48
    }
    sum += value * weights[i]
  }
  vin[:8].to_owned() +
  (if sum % 11 == 10 { "X" } else { (sum % 11).to_string() }) +
  vin[9:].to_owned()
}

///|
pub fn Faker::vehicle_vrm(self : Faker) -> String raise {
  self.alpha(length=2, casing=Upper) +
  self.numeric(length=2) +
  self.alpha(length=3, casing=Upper)
}
