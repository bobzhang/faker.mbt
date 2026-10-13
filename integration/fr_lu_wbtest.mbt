// Generated localized parity cases against the pinned upstream revision.

///|
test "fr_LU person.firstName" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.person_first_name(), "Hippolyte")
}

///|
test "fr_LU person.lastName" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.person_last_name(), "Nicolas")
}

///|
test "fr_LU person.fullName" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.person_full_name(), "Mme Hippolyte Charles")
}

///|
test "fr_LU location.city" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.location_city(), "Esch-sur-Alzette")
}

///|
test "fr_LU location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.location_street_address(), "975 Voie de Caumartin")
}

///|
test "fr_LU location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.location_zip_code(), "3975")
}

///|
test "fr_LU phone.number" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.phone_number(), "97511086")
}

///|
test "fr_LU company.name" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.company_name(), "Maillard et Benoit")
}

///|
test "fr_LU person.bio" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "fr_LU internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "fr_LU location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(
    f.location_postal_address(),
    "7 Quai de Caumartin\nDifferdange\nVianden\n6709",
  )
}

///|
test "fr_LU date.month" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.date_month(), "Janvier")
}

///|
test "fr_LU food.dish" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "fr_LU lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.lorem_slug(), "voluptas-a-tempore")
}

///|
test "fr_LU internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.internet_domain_name(), "hebdomadaire-redaction.lu")
}

///|
test "fr_LU internet.username" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.internet_username(), "Hippolyte.Charles")
}

///|
test "fr_LU internet.url" {
  let f = @faker.Faker(seed=42, locales=@fr_lu.locales())
  assert_eq(f.internet_url(), "https://turquoise-personnel.lu/")
}
