// Generated localized parity cases against the pinned upstream revision.

///|
test "en_ZA person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Nthabiseng")
}

///|
test "en_ZA person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "O'Linn-Mohr")
}

///|
test "en_ZA person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Nthabiseng Cook")
}

///|
test "en_ZA location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Pietermaritzburg")
}

///|
test "en_ZA location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "9751 Lindsay Rapid")
}

///|
test "en_ZA location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "en_ZA phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "019 75110867")
}

///|
test "en_ZA company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Mohr CC")
}

///|
test "en_ZA person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en_ZA internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en_ZA location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "751 Lindsay Rapid\nPolokwane\nMpumalanga\n11354",
  )
}

///|
test "en_ZA date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "en_ZA food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_za.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
