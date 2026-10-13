///|
fn floor_div(a : Int64, b : Int64) -> Int64 {
  let q = a / b
  if a % b < 0L {
    q - 1L
  } else {
    q
  }
}

///|
// Proleptic Gregorian calendar, March-based 400-year eras.
fn civil_days(year : Int32, month : Int32, day : Int32) -> Int64 {
  let y = year.to_int64() - (if month <= 2 { 1L } else { 0L })
  let era = floor_div(y, 400L)
  let yoe = y - era * 400L
  let m = month.to_int64() + (if month > 2 { -3L } else { 9L })
  let doy = (153L * m + 2L) / 5L + day.to_int64() - 1L
  era * 146097L + yoe * 365L + yoe / 4L - yoe / 100L + doy - 719468L
}

///|
fn date_parts(
  timestamp : Int64,
) -> (Int32, Int32, Int32, Int32, Int32, Int32, Int32) {
  let days = floor_div(timestamp, 86400000L)
  let z = days + 719468L
  let era = floor_div(z, 146097L)
  let doe = z - era * 146097L
  let yoe = (doe - doe / 1460L + doe / 36524L - doe / 146096L) / 365L
  let y = yoe + era * 400L
  let doy = doe - (365L * yoe + yoe / 4L - yoe / 100L)
  let mp = (5L * doy + 2L) / 153L
  let day = doy - (153L * mp + 2L) / 5L + 1L
  let month = mp + (if mp < 10L { 3L } else { -9L })
  let year = y + (if month <= 2L { 1L } else { 0L })
  let time = timestamp - days * 86400000L
  (
    year.to_int(),
    month.to_int(),
    day.to_int(),
    (time / 3600000L).to_int(),
    (time / 60000L % 60L).to_int(),
    (time / 1000L % 60L).to_int(),
    (time % 1000L).to_int(),
  )
}

///|
fn shift_year(timestamp : Int64, years : Int32) -> Int64 {
  let (year, month, day, _, _, _, _) = date_parts(timestamp)
  civil_days(year + years, month, day) * 86400000L +
  timestamp -
  floor_div(timestamp, 86400000L) * 86400000L
}

///|
/// Format a Unix millisecond timestamp in ISO 8601 UTC, independently of backend.
pub fn date_iso(timestamp_ms : Int64) -> String raise {
  validate_date(timestamp_ms)
  let (year, month, day, hour, minute, second, ms) = date_parts(timestamp_ms)
  let year = if year >= 0 && year <= 9999 {
    year.to_string().pad_start(4, '0')
  } else {
    (if year < 0 { "-" } else { "+" }) +
    year.abs().to_string().pad_start(6, '0')
  }
  "\{year}-\{month.to_string().pad_start(2, '0')}-\{day.to_string().pad_start(2, '0')}T\{hour.to_string().pad_start(2, '0')}:\{minute.to_string().pad_start(2, '0')}:\{second.to_string().pad_start(2, '0')}.\{ms.to_string().pad_start(3, '0')}Z"
}
