// Generated localized parity cases against the pinned upstream revision.

///|
test "zu_ZA person.firstName" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.person_first_name(), "Sinenhlanhla")
}

///|
test "zu_ZA person.lastName" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.person_last_name(), "Nyanda")
}

///|
test "zu_ZA person.fullName" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.person_full_name(), "Sinenhlanhla Dlamini")
}

///|
test "zu_ZA location.city" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.location_city(), "umGungundlovu")
}

///|
test "zu_ZA location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.location_street_address(), "9751 Nonkululeko Rapid")
}

///|
test "zu_ZA location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "zu_ZA phone.number" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.phone_number(), "029 751 10867")
}

///|
test "zu_ZA company.name" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.company_name(), "Ndebele CC")
}

///|
test "zu_ZA person.bio" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "zu_ZA internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "zu_ZA location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(
    f.location_postal_address(),
    "751 Nonkululeko Rapid\nPolokwane\nINyakatho Kapa\n11354",
  )
}

///|
test "zu_ZA date.month" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "zu_ZA food.dish" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "zu_ZA lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "zu_ZA internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net.za")
}

///|
test "zu_ZA internet.username" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.internet_username(), "Sinenhlanhla.Dlamini")
}

///|
test "zu_ZA internet.url" {
  let f = @faker.Faker(seed=42, locales=@zu_za.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.info/")
}
