// Generated localized parity cases against the pinned upstream revision.

///|
test "yo_NG person.firstName" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.person_first_name(), "Oluwatobiloba")
}

///|
test "yo_NG person.lastName" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.person_last_name(), "Olugbayila")
}

///|
test "yo_NG person.fullName" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.person_full_name(), "Oluwatobiloba Afonja")
}

///|
test "yo_NG location.city" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.location_city(), "Fort Adeoti")
}

///|
test "yo_NG location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.location_street_address(), "9751 Olayinka Rapid")
}

///|
test "yo_NG location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "yo_NG phone.number" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "yo_NG company.name" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.company_name(), "Ogunbo Group")
}

///|
test "yo_NG person.bio" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "yo_NG internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "yo_NG location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(
    f.location_postal_address(),
    "751 Olayinka Rapid\nFort Adeshinaberg\nNebraska\n26123",
  )
}

///|
test "yo_NG date.month" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "yo_NG food.dish" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "yo_NG lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "yo_NG internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "yo_NG internet.username" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.internet_username(), "Oluwatobiloba.Afonja")
}

///|
test "yo_NG internet.url" {
  let f = @faker.Faker(seed=42, locales=@yo_ng.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
