// Generated localized parity cases against the pinned upstream revision.

///|
test "fr_BE person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Maé")
}

///|
test "fr_BE person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Prohaska")
}

///|
test "fr_BE person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Maé Conroy Fils")
}

///|
test "fr_BE location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Visé")
}

///|
test "fr_BE location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Voie Conroy 18")
}

///|
test "fr_BE location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "3975")
}

///|
test "fr_BE phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "+32 69975110")
}

///|
test "fr_BE company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Mayert et Beer")
}

///|
test "fr_BE person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "fr_BE internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "fr_BE location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Parvis au Foin 20\nLobbesSud\nBrabant wallon\n8211",
  )
}

///|
test "fr_BE date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "Janvier")
}

///|
test "fr_BE food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_be.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
