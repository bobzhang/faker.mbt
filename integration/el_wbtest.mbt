// Generated localized parity cases against the pinned upstream revision.

///|
test "el person.firstName" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.person_first_name(), "Χρυσουλα")
}

///|
test "el person.lastName" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.person_last_name(), "Λαιμός")
}

///|
test "el person.fullName" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.person_full_name(), "Χρυσουλα Καραβίας Sr.")
}

///|
test "el location.city" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.location_city(), "Κόρινθος")
}

///|
test "el location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.location_street_address(), "Παπαδοπούλου 6")
}

///|
test "el location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.location_zip_code(), "397 51")
}

///|
test "el phone.number" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.phone_number(), "2419 751108")
}

///|
test "el company.name" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(
    f.company_name(),
    "Καραβίας, Αλεβιζόπουλος and Κυπραίος",
  )
}

///|
test "el person.bio" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "el internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "el location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(
    f.location_postal_address(),
    "Παρ. Καραμανλή 208\n570 98 Καβάλα",
  )
}

///|
test "el date.month" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "el food.dish" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "el lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.lorem_slug(), "voluptas-a-tempore")
}

///|
test "el internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.info")
}

///|
test "el internet.username" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.internet_username(), "Xrysoyla5")
}

///|
test "el internet.url" {
  let f = @faker.Faker(seed=42, locales=@el.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.gr/")
}
