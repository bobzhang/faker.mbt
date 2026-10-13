// Generated localized parity cases against the pinned upstream revision.

///|
test "ro person.firstName" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.person_first_name(), "Veronica")
}

///|
test "ro person.lastName" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.person_last_name(), "Pintea")
}

///|
test "ro person.fullName" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.person_full_name(), "Veronica Nagy")
}

///|
test "ro location.city" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.location_city(), "Corabia")
}

///|
test "ro location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.location_street_address(), "Bulevardul Episcop Chesarie, Bloc 75")
}

///|
test "ro location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.location_zip_code(), "397511")
}

///|
test "ro phone.number" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.phone_number(), "0259975110")
}

///|
test "ro company.name" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.company_name(), "Nagy Group")
}

///|
test "ro person.bio" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "ro internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "ro location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(
    f.location_postal_address(),
    "Intrarea Stirbei Voda, Bloc 61\nOnești\nTeleorman\n670982",
  )
}

///|
test "ro date.month" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.date_month(), "Ianuarie")
}

///|
test "ro food.dish" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "ro lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "ro internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.rec.ro")
}

///|
test "ro internet.username" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.internet_username(), "Veronica5")
}

///|
test "ro internet.url" {
  let f = @faker.Faker(seed=42, locales=@ro.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.nt.ro/")
}
