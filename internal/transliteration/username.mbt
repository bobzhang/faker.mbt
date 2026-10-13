// Generated using Unicode NFKD and Faker char mappings. See LICENSE.

///|
pub fn username(value : String) -> String {
  let out = StringBuilder()
  for c in value {
    let code = c.to_int()
    if code < 128 {
      out.write_char(c)
    } else {
      let mapped = if code <= 7733 {
        transliterate_0(code)
      } else if code <= 12231 {
        transliterate_1(code)
      } else if code <= 44326 {
        transliterate_2(code)
      } else if code <= 45326 {
        transliterate_3(code)
      } else if code <= 46326 {
        transliterate_4(code)
      } else if code <= 47326 {
        transliterate_5(code)
      } else if code <= 48326 {
        transliterate_6(code)
      } else if code <= 49326 {
        transliterate_7(code)
      } else if code <= 50326 {
        transliterate_8(code)
      } else if code <= 51326 {
        transliterate_9(code)
      } else if code <= 52326 {
        transliterate_10(code)
      } else if code <= 53326 {
        transliterate_11(code)
      } else if code <= 54326 {
        transliterate_12(code)
      } else if code <= 63866 {
        transliterate_13(code)
      } else if code <= 65075 {
        transliterate_14(code)
      } else if code <= 120277 {
        transliterate_15(code)
      } else if code <= 194660 {
        transliterate_16(code)
      } else if code <= 195101 {
        transliterate_17(code)
      } else {
        code.to_string(radix=36)
      }
      out.write_string(mapped)
    }
  }
  out.to_string()
}
