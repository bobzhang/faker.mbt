// Generated localized parity cases against the pinned upstream revision.

///|
test "es_MX person.firstName" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.person_first_name(), "Ximena")
}

///|
test "es_MX person.lastName" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.person_last_name(), "Rangel de Nazario")
}

///|
test "es_MX person.fullName" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.person_full_name(), "Ximena Nazario Calvillo")
}

///|
test "es_MX location.city" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.location_city(), "La Paz")
}

///|
test "es_MX location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.location_street_address(), "Eje Juan Manuel Aponte Tirado 70")
}

///|
test "es_MX location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "es_MX phone.number" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.phone_number(), "597511086")
}

///|
test "es_MX company.name" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.company_name(), "Nazario Calvillo Hermanos")
}

///|
test "es_MX person.bio" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "es_MX internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "es_MX location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(
    f.location_postal_address(),
    "Retorno La Otra Banda, 2\n08670 Zacatzingo",
  )
}

///|
test "es_MX date.month" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.date_month(), "febrero")
}

///|
test "es_MX food.dish" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "es_MX lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.lorem_slug(), "Cendrada-Incredulo-Geminado")
}

///|
test "es_MX internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.mx")
}

///|
test "es_MX internet.username" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.internet_username(), "Ximena.CalvilloCalvillo")
}

///|
test "es_MX internet.url" {
  let f = @faker.Faker(seed=42, locales=@es_mx.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.info/")
}
