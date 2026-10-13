// Generated localized parity cases against the pinned upstream revision.

///|
test "af_ZA person.firstName" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.person_first_name(), "Tasha")
}

///|
test "af_ZA person.lastName" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.person_last_name(), "Theunissen")
}

///|
test "af_ZA person.fullName" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.person_full_name(), "Tasha Rens")
}

///|
test "af_ZA location.city" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.location_city(), "Pietermaritzburg")
}

///|
test "af_ZA location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.location_street_address(), "9751 Rosemary Parks")
}

///|
test "af_ZA location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "af_ZA phone.number" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.phone_number(), "029 751 10867")
}

///|
test "af_ZA company.name" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.company_name(), "Rens CC")
}

///|
test "af_ZA person.bio" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "af_ZA internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "af_ZA location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(
    f.location_postal_address(),
    "751 Rosemary Parks\nPort Elizabeth\nWes-Kaap\n2113",
  )
}

///|
test "af_ZA date.month" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "af_ZA food.dish" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "af_ZA lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "af_ZA internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net.za")
}

///|
test "af_ZA internet.username" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.internet_username(), "Tasha5")
}

///|
test "af_ZA internet.url" {
  let f = @faker.Faker(seed=42, locales=@af_za.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.info/")
}
