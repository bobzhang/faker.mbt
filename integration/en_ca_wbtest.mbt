// Generated localized parity cases against the pinned upstream revision.

///|
test "en_CA person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Nikita")
}

///|
test "en_CA person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Reynolds-Mitchell")
}

///|
test "en_CA person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Nikita Cormier")
}

///|
test "en_CA location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Fort Chauncey")
}

///|
test "en_CA location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "9751 Lilliana Rapid")
}

///|
test "en_CA location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "J9T 7W5")
}

///|
test "en_CA phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "en_CA company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Mitchell Group")
}

///|
test "en_CA person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en_CA internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en_CA location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "751 Lilliana Rapid\nFort Collinberg\nNorthwest Territories\nK2V 6N1",
  )
}

///|
test "en_CA date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "en_CA food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ca.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
