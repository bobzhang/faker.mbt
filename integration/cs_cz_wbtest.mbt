// Generated localized parity cases against the pinned upstream revision.

///|
test "cs_CZ person.firstName" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.person_first_name(), "Radana")
}

///|
test "cs_CZ person.lastName" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.person_last_name(), "Sovová")
}

///|
test "cs_CZ person.fullName" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.person_full_name(), "Radana Fousková Phd.")
}

///|
test "cs_CZ location.city" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.location_city(), "Kostelec nad Orlicí")
}

///|
test "cs_CZ location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.location_street_address(), "Matoušova 751")
}

///|
test "cs_CZ location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "cs_CZ phone.number" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.phone_number(), "00420 975 110 867")
}

///|
test "cs_CZ company.name" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.company_name(), "Pech a.s.")
}

///|
test "cs_CZ person.bio" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "cs_CZ internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "cs_CZ location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(
    f.location_postal_address(),
    "Zámezí 611\nBrtnice\nPardubický kraj\n098 21",
  )
}

///|
test "cs_CZ date.month" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.date_month(), "Listopad")
}

///|
test "cs_CZ food.dish" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "cs_CZ lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.lorem_slug(), "voluptas-a-tempore")
}

///|
test "cs_CZ internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "cs_CZ internet.username" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.internet_username(), "Radana.Franc")
}

///|
test "cs_CZ internet.url" {
  let f = @faker.Faker(seed=42, locales=@cs_cz.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.eu/")
}
