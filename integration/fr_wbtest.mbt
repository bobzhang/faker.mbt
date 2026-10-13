// Generated localized parity cases against the pinned upstream revision.

///|
test "fr person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Hippolyte")
}

///|
test "fr person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Nicolas")
}

///|
test "fr person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Mme Hippolyte Charles")
}

///|
test "fr location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Hyères")
}

///|
test "fr location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "975 Voie de Caumartin")
}

///|
test "fr location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "41975")
}

///|
test "fr phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "+33 697511086")
}

///|
test "fr company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Maillard et Benoit")
}

///|
test "fr person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "fr internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
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
test "fr location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "7 Quai de Caumartin\nBoulogne-Billancourt\nPoitou-Charentes\n65709",
  )
}

///|
test "fr date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "Janvier")
}

///|
test "fr food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
