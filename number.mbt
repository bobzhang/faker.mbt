///|
/// Inclusive integer range; multiples are selected uniformly. Equal bounds do
/// not consume randomness. MoonBit Int bounds replace JS's safe-integer range.
pub fn Faker::int(
  self : Faker,
  min~ : Int32 = 0,
  max~ : Int32 = 2147483647,
  multiple_of~ : Int32 = 1,
  distributor? : (Randomizer) -> Double,
) -> Int32 raise {
  guard multiple_of > 0 else {
    raise InvalidArgument("multiple_of must be positive")
  }
  let low = (min.to_double() / multiple_of.to_double()).ceil()
  let high = (max.to_double() / multiple_of.to_double()).floor()
  guard low <= high else {
    raise InvalidArgument("range has no suitable integer")
  }
  let value = if low == high {
    low
  } else {
    (self.distributed(distributor) * (high - low + 1) + low).floor()
  }
  (value * multiple_of.to_double()).to_int()
}

///|
pub fn Faker::float(
  self : Faker,
  min~ : Double = 0,
  max~ : Double = 1,
  multiple_of? : Double,
  fraction_digits? : Int32,
  distributor? : (Randomizer) -> Double,
) -> Double raise {
  guard !min.is_nan() &&
    !max.is_nan() &&
    !min.is_inf() &&
    !max.is_inf() &&
    min <= max else {
    raise InvalidArgument("expected finite ordered bounds")
  }
  let step = match (multiple_of, fraction_digits) {
    (Some(_), Some(_)) =>
      raise InvalidArgument(
        "multiple_of and fraction_digits are mutually exclusive",
      )
    (_, Some(n)) => {
      guard n >= 0 && n <= 15 else {
        raise InvalidArgument("fraction_digits must be between 0 and 15")
      }
      Some(@math.pow(10, -n.to_double()))
    }
    (step, None) => step
  }
  match step {
    None => self.distributed(distributor) * (max - min) + min
    Some(step) => {
      guard step > 0 && !step.is_inf() else {
        raise InvalidArgument("multiple_of must be finite and positive")
      }
      let logarithm = @math.log10(step)
      let factor = if step < 1 && logarithm == logarithm.floor() {
        @math.pow(10, -logarithm)
      } else {
        1.0 / step
      }
      let low = (min * factor).ceil()
      let high = (max * factor).floor()
      guard low <= high &&
        low.abs() <= 9007199254740991.0 &&
        high.abs() <= 9007199254740991.0 else {
        raise InvalidArgument("range has no suitable safe integer multiple")
      }
      (if low == high {
        low
      } else {
        (self.distributed(distributor) * (high - low + 1) + low).floor()
      }) /
      factor
    }
  }
}

///|
pub fn Faker::boolean(self : Faker, probability~ : Double = 0.5) -> Bool raise {
  guard probability >= 0 && probability <= 1 else {
    raise InvalidArgument("probability must be in [0, 1]")
  }
  if probability == 0 {
    false
  } else if probability == 1 {
    true
  } else {
    self.random() < probability
  }
}

///|
pub fn Faker::number_binary(
  self : Faker,
  min~ : Int32 = 0,
  max~ : Int32 = 1,
) -> String raise {
  self.int(min~, max~).to_string(radix=2)
}

///|
pub fn Faker::number_octal(
  self : Faker,
  min~ : Int32 = 0,
  max~ : Int32 = 7,
) -> String raise {
  self.int(min~, max~).to_string(radix=8)
}

///|
pub fn Faker::number_hex(
  self : Faker,
  min~ : Int32 = 0,
  max~ : Int32 = 15,
) -> String raise {
  self.int(min~, max~).to_string(radix=16)
}

///|
pub fn Faker::roman_numeral(
  self : Faker,
  min~ : Int32 = 1,
  max~ : Int32 = 3999,
) -> String raise {
  guard min >= 1 && max <= 3999 else {
    raise InvalidArgument("Roman numerals require bounds in [1, 3999]")
  }
  let mut n = self.int(min~, max~)
  let out = StringBuilder()
  for
    (value, symbol) in [
      (1000, "M"),
      (900, "CM"),
      (500, "D"),
      (400, "CD"),
      (100, "C"),
      (90, "XC"),
      (50, "L"),
      (40, "XL"),
      (10, "X"),
      (9, "IX"),
      (5, "V"),
      (4, "IV"),
      (1, "I"),
    ] {
    while n >= value {
      out.write_string(symbol)
      n -= value
    }
  }
  out.to_string()
}

///|
/// Arbitrary-precision generator preserving Faker's decimal/modulo algorithm.
pub fn Faker::big_int(
  self : Faker,
  min~ : @bigint.BigInt = 0N,
  max? : @bigint.BigInt,
  multiple_of~ : @bigint.BigInt = 1N,
) -> @bigint.BigInt raise {
  let max = max.unwrap_or(min + 999999999999999N)
  guard min <= max && multiple_of > 0N else {
    raise InvalidArgument("invalid big integer range or multiple")
  }
  let low = min / multiple_of + (if min % multiple_of > 0N { 1N } else { 0N })
  let high = max / multiple_of - (if max % multiple_of < 0N { 1N } else { 0N })
  guard low <= high else { raise InvalidArgument("no suitable big integer") }
  if low == high {
    return low * multiple_of
  }
  let delta = high - low + 1N
  let offset = @bigint.BigInt::from_string(
      self.numeric(length=delta.to_string().length()),
    ) %
    delta
  (low + offset) * multiple_of
}
