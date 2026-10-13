// Generated localized parity cases against the pinned upstream revision.

///|
test "eo person.firstName" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.person_first_name(), "Margareto")
}

///|
test "eo person.lastName" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.person_last_name(), "Rhodes-Milsom")
}

///|
test "eo person.fullName" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.person_full_name(), "Margareto Bulthuis")
}

///|
test "eo location.city" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.location_city(), "Malnova Danielofildo")
}

///|
test "eo location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.location_street_address(), "Vojo de Bulthuis 18670")
}

///|
test "eo location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "eo phone.number" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "eo company.name" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.company_name(), "Milsom Group")
}

///|
test "eo person.bio" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.person_bio(), "videobloganto, poŝtisto")
}

///|
test "eo internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "eo location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(
    f.location_postal_address(),
    "Nova Danieloarbaro 670\nEduardofildo\nNebraska\n26123",
  )
}

///|
test "eo date.month" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.date_month(), "januaro")
}

///|
test "eo food.dish" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "eo lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "eo internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "eo internet.username" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.internet_username(), "Margareto.Bulthuis")
}

///|
test "eo internet.url" {
  let f = @faker.Faker(seed=42, locales=@eo.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
