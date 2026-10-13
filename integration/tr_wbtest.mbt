// Generated localized parity cases against the pinned upstream revision.

///|
test "tr person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Buzaçtutuk")
}

///|
test "tr person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Limoncuoğlu")
}

///|
test "tr person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Buzaçtutuk Alkaya")
}

///|
test "tr location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Hatay")
}

///|
test "tr location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Harman Yolu Sokak 75c")
}

///|
test "tr location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "tr phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "+90-975-110-86-70")
}

///|
test "tr company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Gül Group")
}

///|
test "tr person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "tr internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "tr location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Nalbant Sokak 61b\nBitlis\nŞanlıurfa\n67098",
  )
}

///|
test "tr date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "tr food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @tr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
