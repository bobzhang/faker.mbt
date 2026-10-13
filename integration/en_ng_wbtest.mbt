// Generated localized parity cases against the pinned upstream revision.

///|
test "en_NG person.firstName" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.person_first_name(), "Toluwani")
}

///|
test "en_NG person.lastName" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.person_last_name(), "Olumide-Ngozi")
}

///|
test "en_NG person.fullName" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.person_full_name(), "Toluwani Ngozi")
}

///|
test "en_NG location.city" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.location_city(), "Beshi")
}

///|
test "en_NG location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.location_street_address(), "9751 Sumayyah Parks")
}

///|
test "en_NG location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.location_zip_code(), "YT-45-E10-WP-47")
}

///|
test "en_NG phone.number" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.phone_number(), "0703 975 1108")
}

///|
test "en_NG company.name" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.company_name(), "Ngozi Ltd")
}

///|
test "en_NG person.bio" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en_NG internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en_NG location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(
    f.location_postal_address(),
    "751 Sumayyah Parks\nIgoro\nYobe\nFE-81-H54-HP-51",
  )
}

///|
test "en_NG date.month" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "en_NG food.dish" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "en_NG lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "en_NG internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.ng")
}

///|
test "en_NG internet.username" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.internet_username(), "Toluwani5")
}

///|
test "en_NG internet.url" {
  let f = @faker.Faker(seed=42, locales=@en_ng.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.ng/")
}
