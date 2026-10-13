// Generated localized parity cases against the pinned upstream revision.

///|
test "hr person.firstName" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.person_first_name(), "Nela")
}

///|
test "hr person.lastName" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.person_last_name(), "Schermann")
}

///|
test "hr person.fullName" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.person_full_name(), "Nela Dokoza, dipl.oecc")
}

///|
test "hr location.city" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.location_city(), "Kutjevo")
}

///|
test "hr location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.location_street_address(), "Kutinska 751")
}

///|
test "hr location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "hr phone.number" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.phone_number(), "975 110 8670")
}

///|
test "hr company.name" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.company_name(), "Paljević Group")
}

///|
test "hr person.bio" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "hr internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "hr location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(
    f.location_postal_address(),
    "Vodenička 611\nBuzet\nPrimorsko-goranska\n70982",
  )
}

///|
test "hr date.month" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.date_month(), "prosinac")
}

///|
test "hr food.dish" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "hr lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "hr internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "hr internet.username" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.internet_username(), "Nela.Dokonal")
}

///|
test "hr internet.url" {
  let f = @faker.Faker(seed=42, locales=@hr.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.hr/")
}
