// Generated localized parity cases against the pinned upstream revision.

///|
test "en person.firstName" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.person_first_name(), "Nikita")
}

///|
test "en person.lastName" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.person_last_name(), "Reynolds-Mitchell")
}

///|
test "en person.fullName" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.person_full_name(), "Nikita Cormier")
}

///|
test "en location.city" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.location_city(), "Fort Chauncey")
}

///|
test "en location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.location_street_address(), "9751 Lilliana Rapid")
}

///|
test "en location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "en phone.number" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "en company.name" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.company_name(), "Mitchell Group")
}

///|
test "en person.bio" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(
    f.location_postal_address(),
    "751 Lilliana Rapid\nFort Collinberg\nNebraska\n26123",
  )
}

///|
test "en date.month" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "en food.dish" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "en lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "en internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "en internet.username" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.internet_username(), "Nikita.Cormier")
}

///|
test "en internet.url" {
  let f = @faker.Faker(seed=42, locales=@en.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
