///|
fn decimal(value : String) -> Int32 raise {
  guard !value.is_empty() else { raise InvalidArgument("empty integer") }
  let mut n = 0
  for c in value {
    guard c is ('0'..<='9') && n <= 214748363 else {
      raise InvalidArgument("invalid decimal integer")
    }
    n = n * 10 + c.to_int() - 48
  }
  n
}

///|
pub fn Faker::internet_ipv4(
  self : Faker,
  cidr~ : String = "0.0.0.0/0",
) -> String raise {
  guard cidr.split_once("/") is Some((ip, prefix)) else {
    raise InvalidArgument("expected IPv4 CIDR")
  }
  let prefix = decimal(prefix.to_owned())
  guard prefix <= 32 else { raise InvalidArgument("IPv4 prefix exceeds 32") }
  let octets = ip.split(".").to_array().map(s => decimal(s.to_owned()))
  guard octets.length() == 4 && octets.all(n => n <= 255) else {
    raise InvalidArgument("invalid IPv4 octets")
  }
  if prefix == 32 {
    return ip.to_owned()
  }
  let mut raw = 0U
  for n in octets {
    raw = (raw << 8) | n.reinterpret_as_uint()
  }
  let mask = if prefix == 0 { 0xffffffffU } else { 0xffffffffU >> prefix }
  let host = (self.random() * (mask.to_double() + 1)).floor().to_uint()
  let address = (raw & mask.lnot()) | host
  [24, 16, 8, 0].map(shift => ((address >> shift) & 255U).to_string()).join(".")
}

///|
pub fn Faker::internet_ipv6(self : Faker) -> String raise {
  multiple(() => self.hexadecimal(length=4, casing=Lower, prefix=""), count=8).join(
    ":",
  )
}

///|
pub fn Faker::internet_ip(self : Faker) -> String raise {
  if self.boolean() {
    self.internet_ipv4()
  } else {
    self.internet_ipv6()
  }
}

///|
pub fn Faker::internet_mac(
  self : Faker,
  separator~ : String = ":",
) -> String raise {
  let separator = if separator == ":" || separator == "-" || separator == "" {
    separator
  } else {
    ":"
  }
  multiple(() => self.number_hex() + self.number_hex(), count=6).join(separator)
}
