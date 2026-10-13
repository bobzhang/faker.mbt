// Generated localized parity cases against the pinned upstream revision.

///|
test "en_GH person.firstName" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.person_first_name(), "Nicola")
}

///|
test "en_GH person.lastName" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.person_last_name(), "Ntim-Gyasi")
}

///|
test "en_GH person.fullName" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.person_full_name(), "Nicola Akyeampong-Akyeampong")
}

///|
test "en_GH location.city" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.location_city(), "Ayiensu")
}

///|
test "en_GH location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.location_street_address(), "97 Boame Lane")
}

///|
test "en_GH location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.location_zip_code(), "YT-511-0867")
}

///|
test "en_GH phone.number" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.phone_number(), "+233559751108")
}

///|
test "en_GH company.name" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.company_name(), "Gyasi-Akyeampong and Otuo")
}

///|
test "en_GH person.bio" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en_GH internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en_GH location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(
    f.location_postal_address(),
    "7 Boame Lane\nMankranso\nOti\nSA-9821-1354",
  )
}

///|
test "en_GH date.month" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "en_GH food.dish" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "en_GH lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "en_GH internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "en_GH internet.username" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.internet_username(), "Nicola.Akyeampong")
}

///|
test "en_GH internet.url" {
  let f = @faker.Faker(seed=42, locales=@en_gh.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.gov.gh/")
}
