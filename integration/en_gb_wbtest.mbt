// Generated localized parity cases against the pinned upstream revision.

///|
test "en_GB person.firstName" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.person_first_name(), "Nikita")
}

///|
test "en_GB person.lastName" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.person_last_name(), "Rees-Morrison")
}

///|
test "en_GB person.fullName" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.person_full_name(), "Nikita Chapman")
}

///|
test "en_GB location.city" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.location_city(), "Newton Chapman")
}

///|
test "en_GB location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.location_street_address(), "97 Begum Lea")
}

///|
test "en_GB location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.location_zip_code(), "HX9 7PE")
}

///|
test "en_GB phone.number" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.phone_number(), "016977 9751")
}

///|
test "en_GB company.name" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.company_name(), "Morrison Group")
}

///|
test "en_GB person.bio" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en_GB internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en_GB location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(
    f.location_postal_address(),
    "7 Begum Lea\nWinterbottom Bridge\nCounty Armagh\nDA3 5LH",
  )
}

///|
test "en_GB date.month" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "en_GB food.dish" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "en_GB lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "en_GB internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.org.uk")
}

///|
test "en_GB internet.username" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.internet_username(), "Nikita.Chapman")
}

///|
test "en_GB internet.url" {
  let f = @faker.Faker(seed=42, locales=@en_gb.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
