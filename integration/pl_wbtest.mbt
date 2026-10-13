// Generated localized parity cases against the pinned upstream revision.

///|
test "pl person.firstName" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.person_first_name(), "Wiara")
}

///|
test "pl person.lastName" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.person_last_name(), "Różycki")
}

///|
test "pl person.fullName" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.person_full_name(), "Wiara Niedźwiecki")
}

///|
test "pl location.city" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.location_city(), "Legnica")
}

///|
test "pl location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.location_street_address(), "park Niedźwiecki 208")
}

///|
test "pl location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.location_zip_code(), "39-751")
}

///|
test "pl phone.number" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.phone_number(), "44-975-11-08")
}

///|
test "pl company.name" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.company_name(), "Niedźwiecki, Biernat and Rogowski")
}

///|
test "pl person.bio" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "pl internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "pl location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(
    f.location_postal_address(),
    "wyspa Dubiel 186\nSandomierz\nzachodniopomorskie\n82-113",
  )
}

///|
test "pl date.month" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "pl food.dish" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "pl lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.lorem_slug(), "voluptas-a-tempore")
}

///|
test "pl internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.powiat.pl")
}

///|
test "pl internet.username" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.internet_username(), "Wiara5")
}

///|
test "pl internet.url" {
  let f = @faker.Faker(seed=42, locales=@pl.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.org.pl/")
}
