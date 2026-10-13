// Generated localized parity cases against the pinned upstream revision.

///|
test "en_AU_ocker person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Sophie")
}

///|
test "en_AU_ocker person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Taylor-Robinson")
}

///|
test "en_AU_ocker person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Sophie Robinson")
}

///|
test "en_AU_ocker location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Fremantle")
}

///|
test "en_AU_ocker location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "975 Ramsay Street")
}

///|
test "en_AU_ocker location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "3975")
}

///|
test "en_AU_ocker phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "+61 497 511 086")
}

///|
test "en_AU_ocker company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Robinson Brothers")
}

///|
test "en_AU_ocker person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en_AU_ocker internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en_AU_ocker location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "75 Ramsay Street\nBurleigh Heads\nAustralian Capital Territory\n5709",
  )
}

///|
test "en_AU_ocker date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "en_AU_ocker food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_au_ocker.locale(),
    @en_au.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
