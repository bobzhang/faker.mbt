// Generated using Unicode NFKD. See LICENSE.

///|
/// Faker's `helpers.slugify`: decompose accented characters, drop combining
/// marks, turn spaces into hyphens and remove everything outside `[A-Za-z0-9_.-]`.
pub fn slugify(value : String) -> String {
  let out = StringBuilder()
  for c in value {
    let code = c.to_int()
    if c == ' ' {
      out.write_char('-')
    } else if c is ('a'..<='z' | 'A'..<='Z' | '0'..<='9' | '_' | '.' | '-') {
      out.write_char(c)
    } else if code >= 128 {
      out.write_string(
        if code <= 13225 {
          slug_0(code)
        } else if code <= 127306 {
          slug_1(code)
        } else if code <= 130041 {
          slug_2(code)
        } else {
          ""
        },
      )
    }
  }
  out.to_string()
}
