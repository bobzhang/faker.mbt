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
fn ipv4_network_cidr(network : String) -> String raise {
  match network {
    "any" => "0.0.0.0/0"
    "loopback" => "127.0.0.0/8"
    "private-a" => "10.0.0.0/8"
    "private-b" => "172.16.0.0/12"
    "private-c" => "192.168.0.0/16"
    "test-net-1" => "192.0.2.0/24"
    "test-net-2" => "198.51.100.0/24"
    "test-net-3" => "203.0.113.0/24"
    "link-local" => "169.254.0.0/16"
    "multicast" => "224.0.0.0/4"
    _ => raise InvalidArgument("unknown IPv4 network")
  }
}

///|
/// Generate an address inside `cidr`, or inside the named `network` (`any`,
/// `loopback`, `private-a`, `private-b`, `private-c`, `test-net-1`,
/// `test-net-2`, `test-net-3`, `link-local`, `multicast`) when `cidr` is absent.
pub fn Faker::internet_ipv4(
  self : Faker,
  cidr? : String,
  network~ : String = "any",
) -> String raise {
  let cidr = cidr.unwrap_or_else(() => ipv4_network_cidr(network))
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
  multiple(_ => self.hexadecimal(length=4, casing=Lower, prefix=""), count=8).join(
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
  multiple(_ => self.number_hex() + self.number_hex(), count=6).join(separator)
}
