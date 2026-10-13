// Generated localized parity cases against the pinned upstream revision.

///|
test "ne person.firstName" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.person_first_name(), "सुसन")
}

///|
test "ne person.lastName" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.person_last_name(), "राउत")
}

///|
test "ne person.fullName" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.person_full_name(), "सुसन बास्तोला")
}

///|
test "ne location.city" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.location_city(), "दमक")
}

///|
test "ne location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.location_street_address(), "9751 सरिता Parks")
}

///|
test "ne location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.location_zip_code(), "29751")
}

///|
test "ne phone.number" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.phone_number(), "+97797511086")
}

///|
test "ne company.name" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.company_name(), "बास्तोला प्रा. लि.")
}

///|
test "ne person.bio" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "ne internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "ne location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(
    f.location_postal_address(),
    "751 सरिता Parks\nजनकपुर\nतनहुँ\n52113",
  )
}

///|
test "ne date.month" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "ne food.dish" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "ne lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "ne internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.np")
}

///|
test "ne internet.username" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.internet_username(), "1tk1tt1tk1t45")
}

///|
test "ne internet.url" {
  let f = @faker.Faker(seed=42, locales=@ne.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.net/")
}
