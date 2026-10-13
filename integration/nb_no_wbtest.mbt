// Generated localized parity cases against the pinned upstream revision.

///|
test "nb_NO person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Tuva")
}

///|
test "nb_NO person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Rasmussen Mathisen")
}

///|
test "nb_NO person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Tuva Mathisen Sr.")
}

///|
test "nb_NO location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Loøy")
}

///|
test "nb_NO location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Vestre Geiteryggmyra 2")
}

///|
test "nb_NO location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "9751")
}

///|
test "nb_NO phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "975 11 086")
}

///|
test "nb_NO company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Mathisen, Andreassen og Olstad")
}

///|
test "nb_NO person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "nb_NO internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "nb_NO location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Borgesgate 8\nSandstrand\nØstfold\n0211",
  )
}

///|
test "nb_NO date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "nb_NO food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nb_no.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Magnus Sin Spesielle Bønner")
}
