// Generated localized parity cases against the pinned upstream revision.

///|
test "en_IE person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Nikita")
}

///|
test "en_IE person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Reynolds-Mitchell")
}

///|
test "en_IE person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Nikita Cormier")
}

///|
test "en_IE location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Fort Chauncey")
}

///|
test "en_IE location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "9751 Lilliana Rapid")
}

///|
test "en_IE location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "K97 1B60")
}

///|
test "en_IE phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "047 9751108")
}

///|
test "en_IE company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Mitchell Group")
}

///|
test "en_IE person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en_IE internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en_IE location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Suite 751\n18670 Dare Dam\nNew Lola\nCo. Kerry\nK47 N01Y",
  )
}

///|
test "en_IE date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "en_IE food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_ie.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
