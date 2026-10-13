// Generated localized parity cases against the pinned upstream revision.

///|
test "sl_SI person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Romana")
}

///|
test "sl_SI person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Logar")
}

///|
test "sl_SI person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Romana Debeljak")
}

///|
test "sl_SI location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Laško")
}

///|
test "sl_SI location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Koroška cesta 75c")
}

///|
test "sl_SI location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "3975")
}

///|
test "sl_SI phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "sl_SI company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Kolenc Group")
}

///|
test "sl_SI person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "vodja, starš, pisatelj")
}

///|
test "sl_SI internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "sl_SI location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Vošnjakova ulica 61b\nDomžale\nSavinjska\n6709",
  )
}

///|
test "sl_SI date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "sl_SI food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sl_si.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
