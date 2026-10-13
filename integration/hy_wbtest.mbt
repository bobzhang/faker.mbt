// Generated localized parity cases against the pinned upstream revision.

///|
test "hy person.firstName" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.person_first_name(), "Սոֆյա")
}

///|
test "hy person.lastName" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.person_last_name(), "Մխիթարյան")
}

///|
test "hy person.fullName" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.person_full_name(), "Սոֆյա Ղազարյան Sr.")
}

///|
test "hy location.city" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.location_city(), "Նոր Բաբայան")
}

///|
test "hy location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.location_street_address(), "Մխիթարյան  պողոտա 208")
}

///|
test "hy location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "hy phone.number" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.phone_number(), "+374 97 511086")
}

///|
test "hy company.name" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.company_name(), "Ղազարյան Group")
}

///|
test "hy person.bio" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "hy internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "hy location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(
    f.location_postal_address(),
    "Ղազարյան  փողոց 186\nՆերսիսյանակերտ\nԳեղարքունիք\n54261",
  )
}

///|
test "hy date.month" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.date_month(), "Հունիս")
}

///|
test "hy food.dish" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "hy lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.lorem_slug(), "--")
}

///|
test "hy internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "hy internet.username" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.internet_username(), "Svofya5")
}

///|
test "hy internet.url" {
  let f = @faker.Faker(seed=42, locales=@hy.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
