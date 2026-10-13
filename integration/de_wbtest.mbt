// Generated localized parity cases against the pinned upstream revision.

///|
test "de person.firstName" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.person_first_name(), "Melinda")
}

///|
test "de person.lastName" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.person_last_name(), "Rose")
}

///|
test "de person.fullName" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.person_full_name(), "Melinda Dragu")
}

///|
test "de location.city" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.location_city(), "Bad Damien")
}

///|
test "de location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.location_street_address(), "Gluckstr. 75c")
}

///|
test "de location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "de phone.number" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.phone_number(), "(0975) 110867098")
}

///|
test "de company.name" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.company_name(), "Moguenara, Bienias und Reus")
}

///|
test "de person.bio" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "de internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "de location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(
    f.location_postal_address(),
    "Weddigenstr. 61b\nApt. 186\n70982 Ost Joliendorf",
  )
}

///|
test "de date.month" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.date_month(), "Januar")
}

///|
test "de food.dish" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "de lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.lorem_slug(), "voluptas-a-tempore")
}

///|
test "de internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.internet_domain_name(), "halb-wohnzimmer.net")
}

///|
test "de internet.username" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.internet_username(), "Melinda.Dragu")
}

///|
test "de internet.url" {
  let f = @faker.Faker(seed=42, locales=@de.locales())
  assert_eq(f.internet_url(), "https://wunderschon-rock.name/")
}
