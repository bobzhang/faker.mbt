// Generated localized parity cases against the pinned upstream revision.

///|
test "es person.firstName" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.person_first_name(), "Teresa")
}

///|
test "es person.lastName" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.person_last_name(), "Quiñónez Narváez")
}

///|
test "es person.fullName" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.person_full_name(), "Teresa Narváez Burgos")
}

///|
test "es location.city" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.location_city(), "Torremolinos")
}

///|
test "es location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.location_street_address(), "Travesía Juan Ramón s/n.")
}

///|
test "es location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "es phone.number" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.phone_number(), "997511086")
}

///|
test "es company.name" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.company_name(), "Narváez Burgos Hermanos")
}

///|
test "es person.bio" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "es internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "es location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(
    f.location_postal_address(),
    "Ramal Clemente Tafoya Nava 1\n98211 La Línea de la Concepción",
  )
}

///|
test "es date.month" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.date_month(), "febrero")
}

///|
test "es food.dish" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "es lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "es internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.info")
}

///|
test "es internet.username" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.internet_username(), "Teresa.BurgosBurgos")
}

///|
test "es internet.url" {
  let f = @faker.Faker(seed=42, locales=@es.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.eus/")
}
