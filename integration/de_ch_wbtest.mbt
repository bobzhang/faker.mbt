// Generated localized parity cases against the pinned upstream revision.

///|
test "de_CH person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Myriam")
}

///|
test "de_CH person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Schwab")
}

///|
test "de_CH person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Myriam Christen")
}

///|
test "de_CH location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Küsnacht")
}

///|
test "de_CH location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Hirschengraben 75c")
}

///|
test "de_CH location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "4975")
}

///|
test "de_CH phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "097 511 08 67")
}

///|
test "de_CH company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Moser, Beck und Schneider")
}

///|
test "de_CH person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "de_CH internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "de_CH location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Uraniastrasse 61b\nApt. 186\n7098 Emmen",
  )
}

///|
test "de_CH date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "Januar")
}

///|
test "de_CH food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_ch.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
