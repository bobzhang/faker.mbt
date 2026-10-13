// Generated localized parity cases against the pinned upstream revision.

///|
test "uk person.firstName" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.person_first_name(), "Христина")
}

///|
test "uk person.lastName" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.person_last_name(), "Петрина")
}

///|
test "uk person.fullName" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.person_full_name(), "Христина Люта")
}

///|
test "uk location.city" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.location_city(), "Чернігів")
}

///|
test "uk location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(
    f.location_street_address(),
    "провулок Брюховичів, 21",
  )
}

///|
test "uk location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "uk phone.number" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.phone_number(), "(091) 975-11-08")
}

///|
test "uk company.name" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.company_name(), "ФОП СевастопольПром")
}

///|
test "uk person.bio" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "uk internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "uk location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(
    f.location_postal_address(),
    "Брюховичів майдан, 21\nХарків\nХарківська область\n09821",
  )
}

///|
test "uk date.month" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "uk food.dish" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "uk lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "uk internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.sumy.ua")
}

///|
test "uk internet.username" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.internet_username(), "Khristina5")
}

///|
test "uk internet.url" {
  let f = @faker.Faker(seed=42, locales=@uk.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.odessa.ua/")
}
