// Generated localized parity cases against the pinned upstream revision.

///|
test "fi person.firstName" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.person_first_name(), "Tiina")
}

///|
test "fi person.lastName" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.person_last_name(), "Ojala")
}

///|
test "fi person.fullName" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.person_full_name(), "Tiina Mattila")
}

///|
test "fi location.city" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.location_city(), "Kuopio")
}

///|
test "fi location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.location_street_address(), "Pekkaraitti 208")
}

///|
test "fi location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "fi phone.number" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.phone_number(), "017 97 51 10 86")
}

///|
test "fi company.name" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.company_name(), "Mattila Group")
}

///|
test "fi person.bio" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "fi internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "fi location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(
    f.location_postal_address(),
    "Hiltunentie 867\nEspoo\nPohjois-Savo\n21135",
  )
}

///|
test "fi date.month" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "fi food.dish" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "fi lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "fi internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "fi internet.username" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.internet_username(), "Tiina5")
}

///|
test "fi internet.url" {
  let f = @faker.Faker(seed=42, locales=@fi.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
