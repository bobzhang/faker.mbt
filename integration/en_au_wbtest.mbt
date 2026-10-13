// Generated localized parity cases against the pinned upstream revision.

///|
test "en_AU person.firstName" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.person_first_name(), "Victoria")
}

///|
test "en_AU person.lastName" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.person_last_name(), "Olson-Little")
}

///|
test "en_AU person.fullName" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.person_full_name(), "Victoria Little")
}

///|
test "en_AU location.city" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.location_city(), "Fort Jordan")
}

///|
test "en_AU location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.location_street_address(), "975 Alexandra Terrace")
}

///|
test "en_AU location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.location_zip_code(), "3975")
}

///|
test "en_AU phone.number" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.phone_number(), "+61 8 9751 1086")
}

///|
test "en_AU company.name" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.company_name(), "Little Brothers")
}

///|
test "en_AU person.bio" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en_AU internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en_AU location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(
    f.location_postal_address(),
    "75 Alexandra Terrace\nAidanworth\nQueensland\n1135",
  )
}

///|
test "en_AU date.month" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "en_AU food.dish" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "en_AU lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "en_AU internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.org")
}

///|
test "en_AU internet.username" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.internet_username(), "Victoria5")
}

///|
test "en_AU internet.url" {
  let f = @faker.Faker(seed=42, locales=@en_au.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.net.au/")
}
