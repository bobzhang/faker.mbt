// Generated localized parity cases against the pinned upstream revision.

///|
test "he person.firstName" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.person_first_name(), "סתיו")
}

///|
test "he person.lastName" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.person_last_name(), "עובדיהו")
}

///|
test "he person.fullName" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.person_full_name(), "סתיו ארנון")
}

///|
test "he location.city" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.location_city(), "יד השמונה")
}

///|
test "he location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.location_street_address(), "שדרות רבי תנחום 'א6")
}

///|
test "he location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "he phone.number" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.phone_number(), "+972-8-9751108")
}

///|
test "he company.name" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.company_name(), "לחמן בע״מ")
}

///|
test "he person.bio" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "he internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "he location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(
    f.location_postal_address(),
    "סמטת זליגמן מקס 'א21\nאל סייד\nדרום\n0982113",
  )
}

///|
test "he date.month" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.date_month(), "יולי")
}

///|
test "he food.dish" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "he lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.lorem_slug(), "--")
}

///|
test "he internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "he internet.username" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.internet_username(), "styv.arnvn")
}

///|
test "he internet.url" {
  let f = @faker.Faker(seed=42, locales=@he.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
