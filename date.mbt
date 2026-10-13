///|
/// Inclusive JS-safe integer range, used for millisecond timestamps.
pub fn Faker::int64(
  self : Faker,
  min~ : Int64 = 0L,
  max~ : Int64 = 9007199254740991L,
) -> Int64 raise {
  guard min <= max && min >= -9007199254740991L && max <= 9007199254740991L else {
    raise InvalidArgument("expected ordered JS-safe integer bounds")
  }
  if min == max {
    min
  } else {
    (self.random() * ((max - min).to_double() + 1) + min.to_double())
    .floor()
    .to_int64()
  }
}

///|
/// Set the deterministic reference time (Unix milliseconds) used by relative dates.
pub fn Faker::set_default_ref_date(
  self : Faker,
  timestamp_ms : Int64,
) -> Unit raise {
  validate_date(timestamp_ms)
  self.ref_date = timestamp_ms
}

///|
fn validate_date(value : Int64) -> Unit raise {
  guard value >= -8640000000000000L && value <= 8640000000000000L else {
    raise InvalidArgument("date exceeds supported timestamp range")
  }
}

///|
pub fn Faker::date_between(
  self : Faker,
  from : Int64,
  to : Int64,
) -> Int64 raise {
  validate_date(from)
  validate_date(to)
  self.int64(min=from, max=to)
}

///|
pub fn Faker::date_betweens(
  self : Faker,
  from : Int64,
  to : Int64,
  count~ : Int32 = 3,
) -> Array[Int64] raise {
  let result = multiple(_ => self.date_between(from, to), count~)
  result.sort()
  result
}

///|
pub fn Faker::date_anytime(self : Faker, ref_date? : Int64) -> Int64 raise {
  let time = ref_date.unwrap_or(self.ref_date)
  validate_date(time)
  self.date_between(time - 31536000000L, time + 31536000000L)
}

///|
fn date_range(min : Int32, max : Int32) -> Unit raise {
  guard min >= 0 && min < max && max <= 100000000 else {
    raise InvalidArgument("expected 0 <= min < max <= 100000000")
  }
}

///|
pub fn Faker::date_recent(
  self : Faker,
  days~ : Int32 = 1,
  min_days~ : Int32 = 0,
  ref_date? : Int64,
) -> Int64 raise {
  date_range(min_days, days)
  let time = ref_date.unwrap_or(self.ref_date)
  validate_date(time)
  self.date_between(
    time - days.to_int64() * 86400000L,
    time - min_days.to_int64() * 86400000L - 1000L,
  )
}

///|
pub fn Faker::date_soon(
  self : Faker,
  days~ : Int32 = 1,
  min_days~ : Int32 = 0,
  ref_date? : Int64,
) -> Int64 raise {
  date_range(min_days, days)
  let time = ref_date.unwrap_or(self.ref_date)
  validate_date(time)
  self.date_between(
    time + min_days.to_int64() * 86400000L + 1000L,
    time + days.to_int64() * 86400000L,
  )
}

///|
pub fn Faker::date_past(
  self : Faker,
  years~ : Int32 = 1,
  min_years~ : Int32 = 0,
  ref_date? : Int64,
) -> Int64 raise {
  date_range(min_years, years)
  let time = ref_date.unwrap_or(self.ref_date)
  validate_date(time)
  self.date_between(
    shift_year(time, -years),
    shift_year(time, -min_years) - 1000L,
  )
}

///|
pub fn Faker::date_future(
  self : Faker,
  years~ : Int32 = 1,
  min_years~ : Int32 = 0,
  ref_date? : Int64,
) -> Int64 raise {
  date_range(min_years, years)
  let time = ref_date.unwrap_or(self.ref_date)
  validate_date(time)
  self.date_between(
    shift_year(time, min_years) + 1000L,
    shift_year(time, years),
  )
}

///|
pub fn Faker::date_birthdate(
  self : Faker,
  min~ : Int32 = 18,
  max~ : Int32 = 80,
  mode~ : String = "age",
  ref_date? : Int64,
) -> Int64 raise {
  guard min <= max && min >= -271820 && max <= 275760 else {
    raise InvalidArgument("invalid birthdate bounds")
  }
  let time = ref_date.unwrap_or(self.ref_date)
  validate_date(time)
  match mode {
    "age" =>
      self.date_between(
        shift_year(time, -max - 1) + 86400000L,
        shift_year(time, -min),
      )
    "year" =>
      self.date_between(
        civil_days(min, 1, 2) * 86400000L,
        civil_days(max, 12, 30) * 86400000L,
      )
    _ => raise InvalidArgument("birthdate mode must be age or year")
  }
}

///|
fn Faker::date_name(
  self : Faker,
  field : String,
  abbreviated : Bool,
  context : Bool,
) -> String raise {
  let base = "date." + field + "." + (if abbreviated { "abbr" } else { "wide" })
  if context && self.optional_definition(base + "_context") is Some(Array(_)) {
    self.sample(base + "_context")
  } else {
    self.sample(base)
  }
}

///|
pub fn Faker::date_month(
  self : Faker,
  abbreviated~ : Bool = false,
  context~ : Bool = false,
) -> String raise {
  self.date_name("month", abbreviated, context)
}

///|
pub fn Faker::date_weekday(
  self : Faker,
  abbreviated~ : Bool = false,
  context~ : Bool = false,
) -> String raise {
  self.date_name("weekday", abbreviated, context)
}
