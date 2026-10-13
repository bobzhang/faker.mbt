// Generated localized parity cases against the pinned upstream revision.

///|
test "pt_PT person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Vitória")
}

///|
test "pt_PT person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Pacheco")
}

///|
test "pt_PT person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Vitória Mesquita")
}

///|
test "pt_PT location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Lagoa")
}

///|
test "pt_PT location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Caminho Raul Braga 8670")
}

///|
test "pt_PT location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "3975-110")
}

///|
test "pt_PT phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "+351 919751108")
}

///|
test "pt_PT company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Mesquita e Andrade")
}

///|
test "pt_PT person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "pt_PT internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "pt_PT location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Viela Martim Andrade 6\nRio Maior\nViseu\n8211-354",
  )
}

///|
test "pt_PT date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "Janeiro")
}

///|
test "pt_PT food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @pt_pt.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
