// Generated localized parity cases against the pinned upstream revision.

///|
test "ur person.firstName" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.person_first_name(), "وردہ")
}

///|
test "ur person.lastName" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.person_last_name(), "علی")
}

///|
test "ur person.fullName" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.person_full_name(), "وردہ شریف بڑے")
}

///|
test "ur location.city" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.location_city(), "بندرگاہ فرہان")
}

///|
test "ur location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.location_street_address(), "9751 منایل کالونی")
}

///|
test "ur location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "ur phone.number" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "ur company.name" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.company_name(), "شریف Group")
}

///|
test "ur person.bio" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "ur internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "ur location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(
    f.location_postal_address(),
    "751 منایل کالونی\nملکٹاوْن\nاسلام آباد\n13542",
  )
}

///|
test "ur date.month" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.date_month(), "جولائ")
}

///|
test "ur food.dish" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "ur lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.lorem_slug(), "---")
}

///|
test "ur internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "ur internet.username" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.internet_username(), "wrd1c15")
}

///|
test "ur internet.url" {
  let f = @faker.Faker(seed=42, locales=@ur.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
