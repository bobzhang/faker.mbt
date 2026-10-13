// Generated localized parity cases against the pinned upstream revision.

///|
test "ku_ckb person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "هه‌ژان")
}

///|
test "ku_ckb person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "هه‌رده‌ڤان")
}

///|
test "ku_ckb person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "هه‌ژان جوانڕۆ")
}

///|
test "ku_ckb location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Fort جوانڕۆ")
}

///|
test "ku_ckb location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "9751 مه‌تین Rapid")
}

///|
test "ku_ckb location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "ku_ckb phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "ku_ckb company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "لوتكه‌ Group")
}

///|
test "ku_ckb person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "ku_ckb internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "ku_ckb location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "751 مه‌تین Rapid\nFort خورشیدberg\nNebraska\n26123",
  )
}

///|
test "ku_ckb date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "ku_ckb food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ku_ckb.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
