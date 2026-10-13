// Generated localized parity cases against the pinned upstream revision.

///|
test "mn_MN_cyrl person.firstName" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.person_first_name(), "Nikita")
}

///|
test "mn_MN_cyrl person.lastName" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.person_last_name(), "Reynolds-Mitchell")
}

///|
test "mn_MN_cyrl person.fullName" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.person_full_name(), "Nikita Cormier")
}

///|
test "mn_MN_cyrl location.city" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.location_city(), "Fort Chauncey")
}

///|
test "mn_MN_cyrl location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.location_street_address(), "9751 Lilliana Rapid")
}

///|
test "mn_MN_cyrl location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "mn_MN_cyrl phone.number" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "mn_MN_cyrl company.name" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.company_name(), "Mitchell Group")
}

///|
test "mn_MN_cyrl person.bio" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "mn_MN_cyrl internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "mn_MN_cyrl location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(
    f.location_postal_address(),
    "751 Lilliana Rapid\nFort Collinberg\nNebraska\n26123",
  )
}

///|
test "mn_MN_cyrl date.month" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.date_month(), "Долоодугаар сар")
}

///|
test "mn_MN_cyrl food.dish" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "mn_MN_cyrl lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "mn_MN_cyrl internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "mn_MN_cyrl internet.username" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.internet_username(), "Nikita.Cormier")
}

///|
test "mn_MN_cyrl internet.url" {
  let f = @faker.Faker(seed=42, locales=@mn_mn_cyrl.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
