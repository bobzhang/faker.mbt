// Generated localized parity cases against the pinned upstream revision.

///|
test "pt_BR person.firstName" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.person_first_name(), "Talita")
}

///|
test "pt_BR person.lastName" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.person_last_name(), "Reis")
}

///|
test "pt_BR person.fullName" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.person_full_name(), "Talita Nogueira Jr.")
}

///|
test "pt_BR location.city" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.location_city(), "Pablo do Norte")
}

///|
test "pt_BR location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.location_street_address(), "9751 Rua Lorenzo")
}

///|
test "pt_BR location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.location_zip_code(), "39751-108")
}

///|
test "pt_BR phone.number" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.phone_number(), "(97) 5110-8670")
}

///|
test "pt_BR company.name" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.company_name(), "Nogueira, Barros e Pereira")
}

///|
test "pt_BR person.bio" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "pt_BR internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "pt_BR location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(
    f.location_postal_address(),
    "751 Rua Lorenzo\nSaraiva do Descoberto\nBahia\n35426-123",
  )
}

///|
test "pt_BR date.month" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.date_month(), "Janeiro")
}

///|
test "pt_BR food.dish" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "pt_BR lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.lorem_slug(), "voluptas-a-tempore")
}

///|
test "pt_BR internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.internet_domain_name(), "feio-urna.net")
}

///|
test "pt_BR internet.username" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.internet_username(), "Talita5")
}

///|
test "pt_BR internet.url" {
  let f = @faker.Faker(seed=42, locales=@pt_br.locales())
  assert_eq(f.internet_url(), "https://triangular-porco.name/")
}
