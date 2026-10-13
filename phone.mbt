///|
pub fn Faker::phone_number(
  self : Faker,
  style~ : String = "human",
) -> String raise {
  let format = self.sample("phone_number.format." + style)
  let out = StringBuilder()
  for c in format {
    match c {
      '#' => out.write_string(self.int(max=9).to_string())
      '!' => out.write_string(self.int(min=2, max=9).to_string())
      _ => out.write_char(c)
    }
  }
  out.to_string()
}
