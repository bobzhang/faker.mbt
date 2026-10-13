// Generated localized parity cases against the pinned upstream revision.

///|
test "fr_SN person.firstName" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.person_first_name(), "Néné")
}

///|
test "fr_SN person.lastName" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.person_last_name(), "Sabaly")
}

///|
test "fr_SN person.fullName" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.person_full_name(), "Néné Dia")
}

///|
test "fr_SN location.city" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.location_city(), "Khombole")
}

///|
test "fr_SN location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.location_street_address(), "975 Voie Birago Diop")
}

///|
test "fr_SN location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "fr_SN phone.number" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.phone_number(), "+33 697511086")
}

///|
test "fr_SN company.name" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.company_name(), "Mbodj et Bakhoum")
}

///|
test "fr_SN person.bio" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "fr_SN internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "fr_SN location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(
    f.location_postal_address(),
    "7 Quai Birago Diop\nDiourbel\nThiès\n67098",
  )
}

///|
test "fr_SN date.month" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.date_month(), "Janvier")
}

///|
test "fr_SN food.dish" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "fr_SN lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.lorem_slug(), "voluptas-a-tempore")
}

///|
test "fr_SN internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.internet_domain_name(), "hebdomadaire-redaction.org")
}

///|
test "fr_SN internet.username" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.internet_username(), "Nene.Dia")
}

///|
test "fr_SN internet.url" {
  let f = @faker.Faker(seed=42, locales=@fr_sn.locales())
  assert_eq(f.internet_url(), "https://turquoise-personnel.org/")
}
