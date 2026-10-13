// Generated localized parity cases against the pinned upstream revision.

///|
test "en_US person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Nikita")
}

///|
test "en_US person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Reynolds-Mitchell")
}

///|
test "en_US person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Nikita Cormier")
}

///|
test "en_US location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Fort Chauncey")
}

///|
test "en_US location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "9751 Lilliana Rapid")
}

///|
test "en_US location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "en_US phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "en_US company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Mitchell Group")
}

///|
test "en_US person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en_US internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en_US location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "751 Lilliana Rapid\nFort Collinberg, NE 26123",
  )
}

///|
test "en_US date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "en_US food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_us.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
