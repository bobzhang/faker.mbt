// Generated localized parity cases against the pinned upstream revision.

///|
test "fr_CA person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Hippolyte")
}

///|
test "fr_CA person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Nicolas")
}

///|
test "fr_CA person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Mme Hippolyte Charles")
}

///|
test "fr_CA location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Fort Angoustan")
}

///|
test "fr_CA location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "975 Roseline de la Paix")
}

///|
test "fr_CA location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "J9T 5E1")
}

///|
test "fr_CA phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "975 110-8670, poste 982")
}

///|
test "fr_CA company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Maillard et Benoit")
}

///|
test "fr_CA person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "fr_CA internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
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
test "fr_CA location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "7 Benoit des Saussaies\nZachariehaven\nManitoba\nE3N 4H6",
  )
}

///|
test "fr_CA date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "Janvier")
}

///|
test "fr_CA food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ca.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
