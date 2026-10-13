// Generated against the pinned Faker checkout by scripts/generate-parity.mjs.

///|
test "upstream parity seed 0" {
  let f = @faker.Faker(seed=0)
  f.seed(0)
  json_inspect(f.date_between(0L, 1893456000000L), content="1039154221892")
  f.seed(0)
  json_inspect(f.date_betweens(0L, 1893456000000L), content=[
    "1039154221892", "1141305931003", "1354179596894",
  ])
  f.seed(0)
  json_inspect(f.date_anytime(), content="1580915565320")
  f.seed(0)
  json_inspect(f.date_recent(), content="1577797816938")
  f.seed(0)
  json_inspect(f.date_soon(), content="1577884217938")
  f.seed(0)
  json_inspect(f.date_past(), content="1563608182111")
  f.seed(0)
  json_inspect(f.date_future(), content="1595191600598")
  f.seed(0)
  json_inspect(f.date_birthdate(), content="112855569872")
  f.seed(0)
  json_inspect(
    f.date_birthdate(min=1900, max=2000, mode="year"),
    content="-459813566647",
  )
  f.seed(0)
  json_inspect(
    f.date_past(years=4, ref_date=1709208000000L),
    content="1652254547577",
  )
  f.seed(0)
  json_inspect(f.date_month(), content="June")
  f.seed(0)
  json_inspect(f.date_weekday(abbreviated=true), content="Sun")
}

///|
test "upstream parity seed 1" {
  let f = @faker.Faker(seed=1)
  f.seed(1)
  json_inspect(f.date_between(0L, 1893456000000L), content="789612816936")
  f.seed(1)
  json_inspect(f.date_betweens(0L, 1893456000000L), content=[
    "216563684", "789612816936", "1363902734055",
  ])
  f.seed(1)
  json_inspect(f.date_anytime(), content="1572603211881")
  f.seed(1)
  json_inspect(f.date_recent(), content="1577786430284")
  f.seed(1)
  json_inspect(f.date_soon(), content="1577872831284")
  f.seed(1)
  json_inspect(f.date_past(), content="1559452005523")
  f.seed(1)
  json_inspect(f.date_future(), content="1591024037224")
  f.seed(1)
  json_inspect(f.date_birthdate(), content="-149154365243")
  f.seed(1)
  json_inspect(
    f.date_birthdate(min=1900, max=2000, mode="year"),
    content="-879837924603",
  )
  f.seed(1)
  json_inspect(
    f.date_past(years=4, ref_date=1709208000000L),
    content="1635618454045",
  )
  f.seed(1)
  json_inspect(f.date_month(), content="July")
  f.seed(1)
  json_inspect(f.date_weekday(abbreviated=true), content="Sat")
}

///|
test "upstream parity seed 42" {
  let f = @faker.Faker(seed=42)
  f.seed(42)
  json_inspect(f.date_between(0L, 1893456000000L), content="709175235272")
  f.seed(42)
  json_inspect(f.date_betweens(0L, 1893456000000L), content=[
    "709175235272", "1385998321087", "1800135707758",
  ])
  f.seed(42)
  json_inspect(f.date_anytime(), content="1569923794376")
  f.seed(42)
  json_inspect(f.date_recent(), content="1577782759892")
  f.seed(42)
  json_inspect(f.date_soon(), content="1577869160892")
  f.seed(42)
  json_inspect(f.date_past(), content="1558112296813")
  f.seed(42)
  json_inspect(f.date_future(), content="1589680658080")
  f.seed(42)
  json_inspect(f.date_birthdate(), content="-233611073164")
  f.seed(42)
  json_inspect(
    f.date_birthdate(min=1900, max=2000, mode="year"),
    content="-1015229258157",
  )
  f.seed(42)
  json_inspect(
    f.date_past(years=4, ref_date=1709208000000L),
    content="1630255948643",
  )
  f.seed(42)
  json_inspect(f.date_month(), content="January")
  f.seed(42)
  json_inspect(f.date_weekday(abbreviated=true), content="Sat")
}

///|
test "upstream parity seed 12345" {
  let f = @faker.Faker(seed=12345)
  f.seed(12345)
  json_inspect(f.date_between(0L, 1893456000000L), content="1760187168642")
  f.seed(12345)
  json_inspect(f.date_betweens(0L, 1893456000000L), content=[
    "348242177483", "599043192076", "1760187168642",
  ])
  f.seed(12345)
  json_inspect(f.date_anytime(), content="1604933546207")
  f.seed(12345)
  json_inspect(f.date_recent(), content="1577830717901")
  f.seed(12345)
  json_inspect(f.date_soon(), content="1577917118901")
  f.seed(12345)
  json_inspect(f.date_past(), content="1575617172174")
  f.seed(12345)
  json_inspect(f.date_future(), content="1607233492004")
  f.seed(12345)
  json_inspect(f.date_birthdate(), content="869915487951")
  f.seed(12345)
  json_inspect(
    f.date_birthdate(min=1900, max=2000, mode="year"),
    content="753818297681",
  )
  f.seed(12345)
  json_inspect(
    f.date_past(years=4, ref_date=1709208000000L),
    content="1700323410314",
  )
  f.seed(12345)
  json_inspect(f.date_month(), content="September")
  f.seed(12345)
  json_inspect(f.date_weekday(abbreviated=true), content="Wed")
}

///|
test "upstream parity seed 4294967295" {
  let f = @faker.Faker(seed=4294967295)
  f.seed(4294967295)
  json_inspect(f.date_between(0L, 1893456000000L), content="184861951090")
  f.seed(4294967295)
  json_inspect(f.date_betweens(0L, 1893456000000L), content=[
    "184861951090", "1494003626503", "1727556772736",
  ])
  f.seed(4294967295)
  json_inspect(f.date_anytime(), content="1552458647332")
  f.seed(4294967295)
  json_inspect(f.date_recent(), content="1577758835309")
  f.seed(4294967295)
  json_inspect(f.date_soon(), content="1577845236309")
  f.seed(4294967295)
  json_inspect(f.date_past(), content="1549379723568")
  f.seed(4294967295)
  json_inspect(f.date_future(), content="1580924159976")
  f.seed(4294967295)
  json_inspect(f.date_birthdate(), content="-784122077910")
  f.seed(4294967295)
  json_inspect(
    f.date_birthdate(min=1900, max=2000, mode="year"),
    content="-1897745530738",
  )
  f.seed(4294967295)
  json_inspect(
    f.date_past(years=4, ref_date=1709208000000L),
    content="1595301729975",
  )
  f.seed(4294967295)
  json_inspect(f.date_month(), content="August")
  f.seed(4294967295)
  json_inspect(f.date_weekday(abbreviated=true), content="Fri")
}
