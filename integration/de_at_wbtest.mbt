// Generated localized parity cases against the pinned upstream revision.

///|
test "de_AT person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Tomke")
}

///|
test "de_AT person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Rose")
}

///|
test "de_AT person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Frau Tomke Moguenara")
}

///|
test "de_AT location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Jungholz")
}

///|
test "de_AT location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Heideweg 75c")
}

///|
test "de_AT location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "3975")
}

///|
test "de_AT phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "+43-1-9751108")
}

///|
test "de_AT company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Moguenara, Bienias und Reus")
}

///|
test "de_AT person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "de_AT internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "de_AT location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Weiherweg 61b\nApt. 186\n7098 Gams bei Hieflau",
  )
}

///|
test "de_AT date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "Januar")
}

///|
test "de_AT food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @de_at.locale(),
    @de.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
