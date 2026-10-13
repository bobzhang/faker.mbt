///|
pub fn Faker::image_avatar_git_hub(self : Faker) -> String raise {
  "https://avatars.githubusercontent.com/u/\{self.int(max=100000000)}"
}

///|
pub fn Faker::image_person_portrait(
  self : Faker,
  size~ : Int32 = 512,
  sex? : Sex,
) -> String raise {
  let sex = sex.unwrap_or_else(() => self.person_sex_type())
  let sex = if sex is Generic { self.person_sex_type() } else { sex }
  let sex = if sex is Female { "female" } else { "male" }
  "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/\{sex}/\{size}/\{self.int(max=99)}.jpg"
}

///|
pub fn Faker::image_avatar(self : Faker) -> String raise {
  if self.int(max=1) == 0 {
    self.image_person_portrait()
  } else {
    self.image_avatar_git_hub()
  }
}

///|
pub fn Faker::image_url_picsum_photos(
  self : Faker,
  width? : Int32,
  height? : Int32,
  grayscale? : Bool,
  blur? : Int32,
) -> String raise {
  let width = width.unwrap_or_else(() => self.int(min=1, max=3999))
  let height = height.unwrap_or_else(() => self.int(min=1, max=3999))
  let gray = grayscale.unwrap_or_else(() => self.boolean())
  let blur = blur.unwrap_or_else(() => self.int(max=10))
  let id = self.alphanumeric(length=self.int(min=5, max=10))
  let parameters = []
  if gray {
    parameters.push("grayscale")
  }
  if blur >= 1 && blur <= 10 {
    parameters.push("blur=\{blur}")
  }
  "https://picsum.photos/seed/\{id}/\{width}/\{height}" +
  (if parameters.is_empty() { "" } else { "?" + parameters.join("&") })
}

///|
pub fn Faker::image_url(
  self : Faker,
  width? : Int32,
  height? : Int32,
) -> String raise {
  self.image_url_picsum_photos(width?, height?, grayscale=false, blur=0)
}

///|
pub fn Faker::image_url_lorem_flickr(
  self : Faker,
  width? : Int32,
  height? : Int32,
  category? : String,
) -> String raise {
  let width = width.unwrap_or_else(() => self.int(min=1, max=3999))
  let height = height.unwrap_or_else(() => self.int(min=1, max=3999))
  let category = category.map(s => "/" + s).unwrap_or("")
  "https://loremflickr.com/\{width}/\{height}\{category}?lock=\{self.int64()}"
}

///|
fn uri_component(value : String) -> String {
  let out = StringBuilder()
  for byte in @utf8.encode(value) {
    let code = byte.to_int()
    let c = code.unsafe_to_char()
    if c
      is ('a'..<='z'
      | 'A'..<='Z'
      | '0'..<='9'
      | '-'
      | '_'
      | '.'
      | '!'
      | '~'
      | '*'
      | '\''
      | '('
      | ')') {
      out.write_char(c)
    } else {
      out.write_string(
        "%" + code.to_string(radix=16).to_upper().pad_start(2, '0'),
      )
    }
  }
  out.to_string()
}

///|
pub fn Faker::image_data_uri(
  self : Faker,
  width? : Int32,
  height? : Int32,
  color? : String,
  base64? : Bool,
) -> String raise {
  let width = width.unwrap_or_else(() => self.int(min=1, max=3999))
  let height = height.unwrap_or_else(() => self.int(min=1, max=3999))
  let color = color.unwrap_or_else(() => self.color_rgb())
  let encoded = base64.unwrap_or_else(() => self.int(max=1) == 1)
  let color = color
    .replace_all(old="&", new="&amp;")
    .replace_all(old="\"", new="&quot;")
    .replace_all(old="<", new="&lt;")
    .replace_all(old=">", new="&gt;")
  let svg = "<svg xmlns=\"http://www.w3.org/2000/svg\" version=\"1.1\" baseProfile=\"full\" width=\"\{width}\" height=\"\{height}\"><rect width=\"100%\" height=\"100%\" fill=\"\{color}\"/><text x=\"\{width.to_double()/2}\" y=\"\{height.to_double()/2}\" font-size=\"20\" alignment-baseline=\"middle\" text-anchor=\"middle\" fill=\"white\">\{width}x\{height}</text></svg>"
  if encoded {
    "data:image/svg+xml;base64," + @base64.encode(@utf8.encode(svg))
  } else {
    "data:image/svg+xml;charset=UTF-8," + uri_component(svg)
  }
}
