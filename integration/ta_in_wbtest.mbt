// Generated localized parity cases against the pinned upstream revision.

///|
test "ta_IN person.firstName" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.person_first_name(), "Nikita")
}

///|
test "ta_IN person.lastName" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.person_last_name(), "Reynolds-Mitchell")
}

///|
test "ta_IN person.fullName" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.person_full_name(), "Nikita Cormier")
}

///|
test "ta_IN location.city" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.location_city(), "Fort Chauncey")
}

///|
test "ta_IN location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.location_street_address(), "9751 Lilliana Rapid")
}

///|
test "ta_IN location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "ta_IN phone.number" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "ta_IN company.name" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.company_name(), "Mitchell Group")
}

///|
test "ta_IN person.bio" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "ta_IN internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "ta_IN location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(
    f.location_postal_address(),
    "751 Lilliana Rapid\nFort Collinberg\nNebraska\n26123",
  )
}

///|
test "ta_IN date.month" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.date_month(), "கார்த்திகை")
}

///|
test "ta_IN food.dish" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "ta_IN lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "ta_IN internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "ta_IN internet.username" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.internet_username(), "Nikita.Cormier")
}

///|
test "ta_IN internet.url" {
  let f = @faker.Faker(seed=42, locales=@ta_in.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
