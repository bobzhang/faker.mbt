// Generated localized parity cases against the pinned upstream revision.

///|
test "nl_BE person.firstName" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.person_first_name(), "Victoria")
}

///|
test "nl_BE person.lastName" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.person_last_name(), "Thijs")
}

///|
test "nl_BE person.fullName" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.person_full_name(), "Victoria Michiels MBA")
}

///|
test "nl_BE location.city" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.location_city(), "Wommersom")
}

///|
test "nl_BE location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.location_street_address(), "Quintendreef 2")
}

///|
test "nl_BE location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.location_zip_code(), "3975")
}

///|
test "nl_BE phone.number" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.phone_number(), "097 51 10 86")
}

///|
test "nl_BE company.name" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.company_name(), "Michiels BVBA")
}

///|
test "nl_BE person.bio" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "nl_BE internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "nl_BE location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(
    f.location_postal_address(),
    "Decockstraat 8\nRummengem\nLimburg\n2113",
  )
}

///|
test "nl_BE date.month" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.date_month(), "januari")
}

///|
test "nl_BE food.dish" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "nl_BE lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.lorem_slug(), "voluptas-a-tempore")
}

///|
test "nl_BE internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.org")
}

///|
test "nl_BE internet.username" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.internet_username(), "Victoria5")
}

///|
test "nl_BE internet.url" {
  let f = @faker.Faker(seed=42, locales=@nl_be.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.net/")
}
