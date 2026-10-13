///|
// Round the exact IEEE-754 value, matching JS toFixed instead of multiplying
// a float by 10^n (which introduces an additional rounding step).
fn fixed_decimal(value : Double, digits : Int32) -> String raise {
  guard digits >= 0 && digits <= 100 && !value.is_nan() && !value.is_inf() else {
    raise InvalidArgument("invalid fixed decimal")
  }
  if value.abs() >= 1.0e21 {
    return value.to_string()
  }
  let bits = value.abs().reinterpret_as_uint64()
  let exponent = ((bits >> 52) & 2047UL).to_int()
  let significand = (bits & 0xfffffffffffffUL) |
    (if exponent == 0 { 0UL } else { 0x10000000000000UL })
  let power = (if exponent == 0 { 1 } else { exponent }) - 1023 - 52
  let scaled = @bigint.BigInt::from_uint64(significand) *
    10N.pow(@bigint.BigInt::from_int(digits))
  let rounded = if power >= 0 {
    scaled << power
  } else {
    (scaled + (1N << (-power - 1))) >> -power
  }
  let text = rounded.to_string().pad_start(digits + 1, '0')
  let sign = if value < 0 { "-" } else { "" }
  if digits == 0 {
    sign + text
  } else {
    let split = text.length() - digits
    sign + text[:split].to_owned() + "." + text[split:].to_owned()
  }
}
