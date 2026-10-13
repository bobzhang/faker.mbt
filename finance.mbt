///|
pub fn Faker::finance_account_name(self : Faker) -> String raise {
  self.sample("finance.account_type") + " Account"
}

///|
pub fn Faker::finance_account_number(
  self : Faker,
  length~ : Int32 = 8,
) -> String raise {
  self.numeric(length~)
}

///|
pub fn Faker::finance_amount(
  self : Faker,
  min~ : Double = 0,
  max~ : Double = 1000,
  decimals~ : Int32 = 2,
  symbol~ : String = "",
) -> String raise {
  symbol +
  fixed_decimal(self.float(min~, max~, fraction_digits=decimals), decimals)
}

///|
pub fn Faker::finance_pin(self : Faker, length~ : Int32 = 4) -> String raise {
  guard length >= 1 else {
    raise InvalidArgument("PIN length must be positive")
  }
  self.numeric(length~)
}

///|
pub fn Faker::finance_credit_card_cvv(self : Faker) -> String raise {
  self.numeric(length=3)
}

///|
pub fn Faker::finance_currency_code(self : Faker) -> String raise {
  self.finance_currency().code
}

///|
pub fn Faker::finance_currency_name(self : Faker) -> String raise {
  self.finance_currency().name
}

///|
pub fn Faker::finance_currency_numeric_code(self : Faker) -> String raise {
  self.finance_currency().numeric_code
}

///|
pub fn Faker::finance_currency_symbol(self : Faker) -> String raise {
  guard self.definition("finance.currency") is Array(values) else {
    raise InvalidDefinition("finance.currency")
  }
  let values = values.filter(v => json_string(json_field(v, "symbol")) != "")
  json_string(json_field(self.array_element(values), "symbol"))
}

///|
pub fn Faker::finance_routing_number(self : Faker) -> String raise {
  let body = self.sample("finance.federal_reserve_routing_symbol") +
    self.numeric(length=4)
  let mut sum = 0
  for i, c in body.to_array() {
    sum += (c.to_int() - 48) * [3, 7, 1][i % 3]
  }
  body + ((10 - sum % 10) % 10).to_string()
}

///|
pub fn Faker::finance_transaction_description(self : Faker) -> String raise {
  self.pattern("finance.transaction_description_pattern")
}

///|
pub fn Faker::finance_ethereum_address(self : Faker) -> String raise {
  self.hexadecimal(length=40, casing=Lower)
}

///|
pub fn Faker::finance_litecoin_address(self : Faker) -> String raise {
  let n = self.int(min=26, max=33)
  self.from_characters("LM3") +
  self.from_characters(
    "123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ",
    length=n - 1,
  )
}

///|
pub fn Faker::finance_bitcoin_address(
  self : Faker,
  family? : String,
  testnet~ : Bool = false,
) -> String raise {
  let family = family.unwrap_or_else(() => {
    self.array_element(["legacy", "segwit", "bech32", "taproot"])
  })
  let (prefix, low, high, casing, exclude) = match family {
    "legacy" => (if testnet { "m" } else { "1" }, 26, 34, Mixed, "0OIl")
    "segwit" => (if testnet { "2" } else { "3" }, 26, 34, Mixed, "0OIl")
    "bech32" => (if testnet { "tb1" } else { "bc1" }, 42, 42, Lower, "1bBiIoO")
    "taproot" =>
      (if testnet { "tb1p" } else { "bc1p" }, 62, 62, Lower, "1bBiIoO")
    _ => raise InvalidArgument("unknown bitcoin address family")
  }
  prefix +
  self.alphanumeric(
    length=self.int(min=low, max=high) - prefix.length(),
    casing~,
    exclude~,
  )
}

///|
fn json_strings(value : Json) -> Array[String] raise {
  guard value is Array(xs) else {
    raise InvalidDefinition("expected string array")
  }
  xs.map(json_string)
}

///|
pub fn Faker::finance_bic(
  self : Faker,
  include_branch_code? : Bool,
) -> String raise {
  let branch = include_branch_code.unwrap_or_else(() => self.boolean())
  let bank = self.alpha(length=4, casing=Upper)
  let country = self.array_element(
    json_strings(json_field(iban_data, "iso3166")),
  )
  let location = self.alphanumeric(length=2, casing=Upper)
  let suffix = if branch {
    if self.boolean() {
      self.alphanumeric(length=3, casing=Upper)
    } else {
      "XXX"
    }
  } else {
    ""
  }
  bank + country + location + suffix
}

///|
fn mod97(value : String) -> Int32 {
  let mut remainder = 0
  for c in value {
    let n = if c is ('A'..<='Z') { c.to_int() - 55 } else { c.to_int() - 48 }
    remainder = (remainder * (if n >= 10 { 100 } else { 10 }) + n) % 97
  }
  remainder
}

///|
pub fn Faker::finance_iban(
  self : Faker,
  country_code? : String,
  formatted~ : Bool = false,
) -> String raise {
  guard json_field(iban_data, "formats") is Array(formats) else {
    raise InvalidDefinition("IBAN formats")
  }
  let format = match country_code {
    None => self.array_element(formats)
    Some(country) => {
      let matching = formats.filter(f => {
        json_string(json_field(f, "country")) == country
      })
      guard !matching.is_empty() else {
        raise InvalidArgument("unsupported IBAN country")
      }
      matching[0]
    }
  }
  let country = json_string(json_field(format, "country"))
  guard json_field(format, "bban") is Array(parts) else {
    raise InvalidDefinition("BBAN")
  }
  let out = StringBuilder()
  for part in parts {
    let kind = json_string(json_field(part, "type"))
    let count = json_int(json_field(part, "count"))
    let block = StringBuilder()
    let mut remaining = count
    while remaining > 0 {
      match kind {
        "a" => block.write_string(self.alpha(casing=Upper))
        "c" =>
          block.write_string(
            if self.boolean(probability=0.8) {
              self.numeric()
            } else {
              self.alpha(casing=Upper)
            },
          )
        _ =>
          if remaining >= 3 && self.boolean(probability=0.3) {
            let key = if self.boolean() {
              remaining -= 2
              "pattern100"
            } else {
              remaining -= 1
              "pattern10"
            }
            block.write_string(
              self.array_element(json_strings(json_field(iban_data, key))),
            )
          } else {
            block.write_string(self.numeric())
          }
      }
      remaining -= 1
    }
    out.write_string(block.to_string()[:count].to_owned())
  }
  let body = out.to_string()
  let result = country +
    (98 - mod97(body + country + "00")).to_string().pad_start(2, '0') +
    body
  if formatted {
    group_string(result, 4, " ")
  } else {
    result
  }
}

///|
fn group_string(value : String, count : Int32, separator : String) -> String {
  let parts : Array[String] = []
  for start = 0; start < value.length(); start = start + count {
    parts.push(value[start:(start + count).min(value.length())].to_owned())
  }
  parts.join(separator)
}
