// Generated localized parity cases against the pinned upstream revision.

///|
test "ar person.firstName" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.person_first_name(), "نوف")
}

///|
test "ar person.lastName" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.person_last_name(), "جابالله")
}

///|
test "ar person.fullName" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.person_full_name(), "نوف بن عبد السلام")
}

///|
test "ar location.city" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.location_city(), "الفجيرة")
}

///|
test "ar location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.location_street_address(), "9751 درب، طريق عمر")
}

///|
test "ar location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "ar phone.number" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "ar company.name" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.company_name(), "بن عبد السلام Group")
}

///|
test "ar person.bio" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "ar internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "ar location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(
    f.location_postal_address(),
    "751 درب، طريق عمر\nبعلبك\nالمثنى\n21135-4261",
  )
}

///|
test "ar date.month" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.date_month(), "تَمُّوز")
}

///|
test "ar food.dish" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "ar lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.lorem_slug(), "--")
}

///|
test "ar internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "ar internet.username" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.internet_username(), "nwf5")
}

///|
test "ar internet.url" {
  let f = @faker.Faker(seed=42, locales=@ar.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
