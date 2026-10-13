///|
test "UTC calendar handles leap days, pre-epoch dates, and extended years" {
  assert_eq(@faker.date_iso(0L), "1970-01-01T00:00:00.000Z")
  assert_eq(@faker.date_iso(-1L), "1969-12-31T23:59:59.999Z")
  assert_eq(@faker.date_iso(1709208000000L), "2024-02-29T12:00:00.000Z")
  assert_eq(@faker.date_iso(-62167219200000L), "0000-01-01T00:00:00.000Z")
  assert_eq(@faker.date_iso(253402300800000L), "+010000-01-01T00:00:00.000Z")
  assert_eq(@faker.date_iso(8640000000000000L), "+275760-09-13T00:00:00.000Z")
}
