// Generated localized parity cases against the pinned upstream revision.

///|
test "sv person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Ulrika")
}

///|
test "sv person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Nilsson Lindström")
}

///|
test "sv person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Ulrika Lindström Sr.")
}

///|
test "sv location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Båvik")
}

///|
test "sv location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Undre Stationsgränden 208")
}

///|
test "sv location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "sv phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "+46769751108")
}

///|
test "sv company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Lindström, Arvidsson Kommanditbolag")
}

///|
test "sv person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "sv internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "sv location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Björklunds Väg 867\nSödervik\nGöteborg\n11354",
  )
}

///|
test "sv date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "januari")
}

///|
test "sv food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
