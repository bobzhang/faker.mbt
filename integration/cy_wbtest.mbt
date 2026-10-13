// Generated localized parity cases against the pinned upstream revision.

///|
test "cy person.firstName" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.person_first_name(), "Nikita")
}

///|
test "cy person.lastName" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.person_last_name(), "Reynolds-Mitchell")
}

///|
test "cy person.fullName" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.person_full_name(), "Nikita Cormier")
}

///|
test "cy location.city" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.location_city(), "Caselwy")
}

///|
test "cy location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.location_street_address(), "97 Llwyn Arian")
}

///|
test "cy location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.location_zip_code(), "HR9 7PE")
}

///|
test "cy phone.number" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.phone_number(), "029 7511 0867")
}

///|
test "cy company.name" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.company_name(), "Mitchell Group")
}

///|
test "cy person.bio" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "cy internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "cy location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(
    f.location_postal_address(),
    "7 Llwyn Arian\nLlanpennar\nTor-faen\nLL7 0ZV",
  )
}

///|
test "cy date.month" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.date_month(), "Hydref")
}

///|
test "cy food.dish" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "cy lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "cy internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.org.uk")
}

///|
test "cy internet.username" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.internet_username(), "Nikita.Cormier")
}

///|
test "cy internet.url" {
  let f = @faker.Faker(seed=42, locales=@cy.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
