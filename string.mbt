///|
pub(all) enum Casing {
  Lower
  Upper
  Mixed
}

///|
fn letters(casing : Casing) -> String {
  match casing {
    Lower => "abcdefghijklmnopqrstuvwxyz"
    Upper => "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    Mixed => "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  }
}

///|
pub fn Faker::from_characters(
  self : Faker,
  characters : String,
  length~ : Int32 = 1,
) -> String raise {
  if length <= 0 {
    return ""
  }
  let chars = characters.to_array()
  let out = StringBuilder()
  for _ in 0..<length {
    out.write_char(self.array_element(chars))
  }
  out.to_string()
}

///|
pub fn Faker::alpha(
  self : Faker,
  length~ : Int32 = 1,
  casing~ : Casing = Mixed,
  exclude~ : String = "",
) -> String raise {
  self.from_characters(
    String::from_array(
      letters(casing).to_array().filter(c => !exclude.contains_char(c)),
    ),
    length~,
  )
}

///|
pub fn Faker::alphanumeric(
  self : Faker,
  length~ : Int32 = 1,
  casing~ : Casing = Mixed,
  exclude~ : String = "",
) -> String raise {
  self.from_characters(
    String::from_array(
      ("0123456789" + letters(casing))
      .to_array()
      .filter(c => !exclude.contains_char(c)),
    ),
    length~,
  )
}

///|
pub fn Faker::numeric(
  self : Faker,
  length~ : Int32 = 1,
  allow_leading_zeros~ : Bool = true,
  exclude~ : String = "",
) -> String raise {
  if length <= 0 {
    return ""
  }
  let chars = "0123456789".to_array().filter(c => !exclude.contains_char(c))
  let first = if allow_leading_zeros {
    chars
  } else {
    chars.filter(c => c != '0')
  }
  let out = StringBuilder()
  out.write_char(self.array_element(first))
  for _ in 1..<length {
    out.write_char(self.array_element(chars))
  }
  out.to_string()
}

///|
pub fn Faker::hexadecimal(
  self : Faker,
  length~ : Int32 = 1,
  prefix~ : String = "0x",
  casing~ : Casing = Mixed,
) -> String raise {
  let value = self.from_characters("0123456789abcdefABCDEF", length~)
  prefix +
  (match casing {
    Lower => value.to_lower()
    Upper => value.to_upper()
    Mixed => value
  })
}

///|
pub fn Faker::binary(
  self : Faker,
  length~ : Int32 = 1,
  prefix~ : String = "0b",
) -> String raise {
  prefix + self.from_characters("01", length~)
}

///|
pub fn Faker::octal(
  self : Faker,
  length~ : Int32 = 1,
  prefix~ : String = "0o",
) -> String raise {
  prefix + self.from_characters("01234567", length~)
}

///|
pub fn Faker::symbol(self : Faker, length~ : Int32 = 1) -> String raise {
  self.from_characters("!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~", length~)
}

///|
pub fn Faker::string_sample(self : Faker, length~ : Int32 = 10) -> String raise {
  let out = StringBuilder()
  for _ in 0..<length.max(0) {
    out.write_char(self.int(min=33, max=125).unsafe_to_char())
  }
  out.to_string()
}

///|
pub fn Faker::nanoid(self : Faker, length~ : Int32 = 21) -> String raise {
  let out = StringBuilder()
  for _ in 0..<length.max(0) {
    if self.weighted_array_element([(62.0, true), (2.0, false)]) {
      out.write_string(self.alphanumeric())
    } else {
      out.write_string(self.array_element(["_", "-"]))
    }
  }
  out.to_string()
}

///|
fn Faker::uuid_pattern(self : Faker, pattern : String) -> String raise {
  let out = StringBuilder()
  for c in pattern {
    if c == 'x' {
      out.write_string(self.number_hex())
    } else {
      out.write_char(c)
    }
  }
  out.to_string().replace(old="y", new=self.number_hex(min=8, max=11))
}

///|
/// A version 4 UUID; like Faker, this is deterministic and not cryptographic.
pub fn Faker::uuid(self : Faker) -> String raise {
  self.uuid_pattern("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx")
}

///|
/// A version 7 UUID with an explicit Unix timestamp in milliseconds.
pub fn Faker::uuid_v7(self : Faker, timestamp_ms : Int64) -> String raise {
  let timestamp = (timestamp_ms.max(0L) & 0xffffffffffffL)
    .to_string(radix=16)
    .pad_start(12, '0')
  timestamp[:8].to_owned() +
  "-" +
  timestamp[8:].to_owned() +
  "-" +
  self.uuid_pattern("7xxx-yxxx-xxxxxxxxxxxx")
}

///|
/// A ULID with an explicit timestamp, avoiding implicit wall-clock dependencies.
pub fn Faker::ulid(self : Faker, timestamp_ms : Int64) -> String raise {
  guard timestamp_ms >= 0L && timestamp_ms <= 281474976710655L else {
    raise InvalidArgument("ULID timestamp must fit 48 unsigned bits")
  }
  let alphabet = "0123456789ABCDEFGHJKMNPQRSTVWXYZ".to_array()
  let time = Array::make(10, '0')
  let mut remaining = timestamp_ms
  for i = 9; i >= 0; i = i - 1 {
    time[i] = alphabet[(remaining % 32L).to_int()]
    remaining /= 32L
  }
  String::from_array(time) +
  self.from_characters(String::from_array(alphabet), length=16)
}
