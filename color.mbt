///|
pub fn Faker::color_rgb(
  self : Faker,
  include_alpha~ : Bool = false,
  prefix~ : String = "#",
  casing~ : Casing = Lower,
) -> String raise {
  self.hexadecimal(length=if include_alpha { 8 } else { 6 }, prefix~, casing~)
}

///|
pub fn Faker::color_rgb_channels(
  self : Faker,
  include_alpha~ : Bool = false,
) -> Array[Double] raise {
  let values = multiple(_ => self.int(max=255).to_double())
  if include_alpha {
    values.push(self.float(multiple_of=0.01))
  }
  values
}

///|
pub fn Faker::color_cmyk(self : Faker) -> Array[Double] raise {
  multiple(_ => self.float(multiple_of=0.01), count=4)
}

///|
pub fn Faker::color_hsl(
  self : Faker,
  include_alpha~ : Bool = false,
) -> Array[Double] raise {
  let values = [self.int(max=360).to_double()]
  values.append(
    multiple(
      _ => self.float(multiple_of=0.01),
      count=if include_alpha { 3 } else { 2 },
    ),
  )
  values
}

///|
pub fn Faker::color_hwb(self : Faker) -> Array[Double] raise {
  self.color_hsl()
}

///|
pub fn Faker::color_lab(self : Faker) -> Array[Double] raise {
  [
    self.float(multiple_of=0.000001),
    self.float(min=-100, max=100, multiple_of=0.0001),
    self.float(min=-100, max=100, multiple_of=0.0001),
  ]
}

///|
pub fn Faker::color_lch(self : Faker) -> Array[Double] raise {
  [
    self.float(multiple_of=0.000001),
    self.float(max=230, multiple_of=0.1),
    self.float(max=360, multiple_of=0.1),
  ]
}

///|
pub fn Faker::color_by_css_color_space(self : Faker) -> Array[Double] raise {
  multiple(_ => self.float(multiple_of=0.0001))
}

///|
pub fn Faker::color_css_supported_function(self : Faker) -> String raise {
  self.array_element([
    "rgb", "rgba", "hsl", "hsla", "hwb", "cmyk", "lab", "lch", "color",
  ])
}

///|
pub fn Faker::color_css_supported_space(self : Faker) -> String raise {
  self.array_element([
    "sRGB", "display-p3", "rec2020", "a98-rgb", "prophoto-rgb",
  ])
}

///|
/// Format generated color channels as CSS. The model determines channel count.
pub fn color_css(
  values : ArrayView[Double],
  model~ : String = "rgb",
  space~ : String = "sRGB",
) -> String raise {
  let needed = match model {
    "rgba" | "hsla" | "cmyk" => 4
    "rgb" | "hsl" | "hwb" | "lab" | "lch" | "color" => 3
    _ => raise InvalidArgument("unknown CSS color model")
  }
  guard values.length() == needed else {
    raise InvalidArgument("incorrect color channel count")
  }
  fn percent(value : Double) -> String {
    "\{(value * 100 + 0.5).floor()}%"
  }
  let (a, b, c) = (values[0], values[1], values[2])
  match model {
    "rgb" => "rgb(\{a}, \{b}, \{c})"
    "rgba" => "rgba(\{a}, \{b}, \{c}, \{values[3]})"
    "hsl" => "hsl(\{a}deg \{percent(b)} \{percent(c)})"
    "hsla" => "hsl(\{a}deg \{percent(b)} \{percent(c)} / \{values[3]})"
    "hwb" => "hwb(\{a} \{percent(b)} \{percent(c)})"
    "lab" | "lch" => "\{model}(\{percent(a)} \{b} \{c})"
    "cmyk" =>
      "cmyk(\{percent(a)}, \{percent(b)}, \{percent(c)}, \{percent(values[3])})"
    _ => "color(\{space} \{a} \{b} \{c})"
  }
}

///|
pub fn color_binary(values : ArrayView[Double]) -> String {
  values
  .to_owned()
  .map(value => {
    if value % 1 != 0 {
      Float::from_double(value)
      .reinterpret_as_uint()
      .to_string(radix=2)
      .pad_start(32, '0')
    } else {
      value
      .to_int64()
      .reinterpret_as_uint64()
      .to_uint()
      .to_string(radix=2)
      .pad_start(8, '0')
    }
  })
  .join(" ")
}
