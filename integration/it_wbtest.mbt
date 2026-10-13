// Generated localized parity cases against the pinned upstream revision.

///|
test "it person.firstName" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.person_first_name(), "Vanna")
}

///|
test "it person.lastName" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.person_last_name(), "Perego")
}

///|
test "it person.fullName" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.person_full_name(), "Vanna Mazzarella")
}

///|
test "it location.city" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.location_city(), "Settimo Maggiorino")
}

///|
test "it location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.location_street_address(), "Incrocio Maggiorino 208")
}

///|
test "it location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "it phone.number" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.phone_number(), "+97 511 08670982")
}

///|
test "it company.name" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.company_name(), "Mazzarella, Bartolomei e Parente Group")
}

///|
test "it person.bio" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "it internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "it location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(
    f.location_postal_address(),
    "Rotonda Cardia 867\nSettimo Candido ligure\nFerrara\n54261",
  )
}

///|
test "it date.month" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "it food.dish" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "it lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "it internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "it internet.username" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.internet_username(), "Vanna5")
}

///|
test "it internet.url" {
  let f = @faker.Faker(seed=42, locales=@it.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.net/")
}
