// Generated localized parity cases against the pinned upstream revision.

///|
test "nl person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Quinn")
}

///|
test "nl person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "van Dongen")
}

///|
test "nl person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Quinn Hazes Jr.")
}

///|
test "nl location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Wilpsluis")
}

///|
test "nl location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Maximilianlaan 18")
}

///|
test "nl location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "4975 JP")
}

///|
test "nl phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "+31697511086")
}

///|
test "nl company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "de Graaf Bedrijf")
}

///|
test "nl person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "nl internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "nl location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Hazeslaan 8\nRhaan\nZuid-Holland\n8211 MT",
  )
}

///|
test "nl date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "januari")
}

///|
test "nl food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @nl.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
