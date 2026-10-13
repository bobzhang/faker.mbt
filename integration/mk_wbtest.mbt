// Generated localized parity cases against the pinned upstream revision.

///|
test "mk person.firstName" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.person_first_name(), "Трена")
}

///|
test "mk person.lastName" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.person_last_name(), "Планинска")
}

///|
test "mk person.fullName" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.person_full_name(), "Трена Михајлова")
}

///|
test "mk location.city" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.location_city(), "Зрновци")
}

///|
test "mk location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.location_street_address(), "Индустриска 751")
}

///|
test "mk location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.location_zip_code(), "3975")
}

///|
test "mk phone.number" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.phone_number(), "00389 2 975 1108")
}

///|
test "mk company.name" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.company_name(), "Митриќески АД")
}

///|
test "mk person.bio" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "mk internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "mk location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(
    f.location_postal_address(),
    "Хаванска 611\nБогданци\nМакедонски Брод\n7098",
  )
}

///|
test "mk date.month" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.date_month(), "мај")
}

///|
test "mk food.dish" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "mk lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "mk internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.org")
}

///|
test "mk internet.username" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.internet_username(), "Trena5")
}

///|
test "mk internet.url" {
  let f = @faker.Faker(seed=42, locales=@mk.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.net/")
}
