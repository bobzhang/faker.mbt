///|
pub fn Faker::airline_aircraft_type(self : Faker) -> String raise {
  self.array_element(["narrowbody", "regional", "widebody"])
}

///|
pub fn Faker::airline_seat(
  self : Faker,
  aircraft_type~ : String = "narrowbody",
) -> String raise {
  let (rows, seats) = match aircraft_type {
    "narrowbody" => (35, "ABCDEF")
    "regional" => (20, "ABCD")
    "widebody" => (60, "ABCDEFGHJK")
    _ => raise InvalidArgument("unknown aircraft type")
  }
  self.int(min=1, max=rows).to_string() + self.from_characters(seats)
}

///|
pub fn Faker::airline_flight_number(
  self : Faker,
  length? : Int32,
  add_leading_zeros~ : Bool = false,
) -> String raise {
  let number = self.numeric(
    length=length.unwrap_or_else(() => self.int(min=1, max=4)),
    allow_leading_zeros=false,
  )
  if add_leading_zeros {
    number.pad_start(4, '0')
  } else {
    number
  }
}

///|
pub fn Faker::airline_record_locator(
  self : Faker,
  allow_numerics~ : Bool = false,
  allow_visually_similar~ : Bool = false,
) -> String raise {
  let exclude = (if allow_numerics { "" } else { "0123456789" }) +
    (if allow_visually_similar { "" } else { "0O1IL" })
  self.alphanumeric(length=6, casing=Upper, exclude~)
}
