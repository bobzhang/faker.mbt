// Generated localized parity cases against the pinned upstream revision.

///|
test "hu person.firstName" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.person_first_name(), "Zita")
}

///|
test "hu person.lastName" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.person_last_name(), "Péter")
}

///|
test "hu person.fullName" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.person_full_name(), "Nagy Zita")
}

///|
test "hu location.city" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.location_city(), "Kamond")
}

///|
test "hu location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.location_street_address(), "Nagy főút 1")
}

///|
test "hu location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.location_zip_code(), "3975")
}

///|
test "hu phone.number" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.phone_number(), "+36309751108")
}

///|
test "hu company.name" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.company_name(), "Nagy Bt.")
}

///|
test "hu person.bio" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "hu internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "hu location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(
    f.location_postal_address(),
    "Napsugár park 2\nBalatonőszöd\nNógrád\n7098",
  )
}

///|
test "hu date.month" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.date_month(), "július")
}

///|
test "hu food.dish" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "hu lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "hu internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.internet_domain_name(), "haromoras-attelepites.net")
}

///|
test "hu internet.username" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.internet_username(), "Zita5")
}

///|
test "hu internet.url" {
  let f = @faker.Faker(seed=42, locales=@hu.locales())
  assert_eq(f.internet_url(), "https://erdemi-sivarsag.hu/")
}
