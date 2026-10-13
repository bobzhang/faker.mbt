// Generated localized parity cases against the pinned upstream revision.

///|
test "en_NP person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Susan")
}

///|
test "en_NP person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Pradhan")
}

///|
test "en_NP person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Susan Limbu")
}

///|
test "en_NP location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Damak")
}

///|
test "en_NP location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "9751 Shristi Parks")
}

///|
test "en_NP location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "29751")
}

///|
test "en_NP phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "+97797511086")
}

///|
test "en_NP company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Limbu Group")
}

///|
test "en_NP person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en_NP internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en_NP location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "751 Shristi Parks\nJanakpur\nTanahu\n52113",
  )
}

///|
test "en_NP date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "en_NP food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_np.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
