// Generated localized parity cases against the pinned upstream revision.

///|
test "az person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Tuba")
}

///|
test "az person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Əfəndiyeva")
}

///|
test "az person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Tuba")
}

///|
test "az location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Xocavənd")
}

///|
test "az location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Xaqani sh., 751")
}

///|
test "az location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "AZ3975")
}

///|
test "az phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "(939)751-10-86")
}

///|
test "az company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "QSC Tunar")
}

///|
test "az person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "az internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "az location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Yəhya Hüseynov sahəsi, 611\nAğstafa, AZ8670",
  )
}

///|
test "az date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "iyul")
}

///|
test "az food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @az.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Nurlan Üsulunda Doşab")
}
