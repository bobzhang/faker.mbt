// Generated localized parity cases against the pinned upstream revision.

///|
test "ku_kmr_latin person.firstName" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.person_first_name(), "Serhat")
}

///|
test "ku_kmr_latin person.lastName" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.person_last_name(), "Tunç")
}

///|
test "ku_kmr_latin person.fullName" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.person_full_name(), "Xatun Serhat Barzani")
}

///|
test "ku_kmr_latin location.city" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.location_city(), "Fort Arîn")
}

///|
test "ku_kmr_latin location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.location_street_address(), "9751 Roşan Rapid")
}

///|
test "ku_kmr_latin location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "ku_kmr_latin phone.number" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "ku_kmr_latin company.name" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.company_name(), "Koç Group")
}

///|
test "ku_kmr_latin person.bio" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "ku_kmr_latin internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "ku_kmr_latin location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(
    f.location_postal_address(),
    "751 Roşan Rapid\nFort Avdalberg\nNebraska\n26123",
  )
}

///|
test "ku_kmr_latin date.month" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "ku_kmr_latin food.dish" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "ku_kmr_latin lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "ku_kmr_latin internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "ku_kmr_latin internet.username" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.internet_username(), "Serhat.Barzani")
}

///|
test "ku_kmr_latin internet.url" {
  let f = @faker.Faker(seed=42, locales=@ku_kmr_latin.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
