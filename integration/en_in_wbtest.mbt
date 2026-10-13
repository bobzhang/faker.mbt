// Generated localized parity cases against the pinned upstream revision.

///|
test "en_IN person.firstName" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.person_first_name(), "Vaijayanthi")
}

///|
test "en_IN person.lastName" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.person_last_name(), "Patel-Mehrotra")
}

///|
test "en_IN person.fullName" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.person_full_name(), "Vaijayanthi Mehrotra")
}

///|
test "en_IN location.city" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.location_city(), "Mukerian")
}

///|
test "en_IN location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.location_street_address(), "9751 Subhashini Parks")
}

///|
test "en_IN location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.location_zip_code(), "397 511")
}

///|
test "en_IN phone.number" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.phone_number(), "+916975110867")
}

///|
test "en_IN company.name" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.company_name(), "Mehrotra Corp")
}

///|
test "en_IN person.bio" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en_IN internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en_IN location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(
    f.location_postal_address(),
    "751 Subhashini Parks\nSangareddy\nUttarakhand\n821 135",
  )
}

///|
test "en_IN date.month" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.date_month(), "January")
}

///|
test "en_IN food.dish" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "en_IN lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "en_IN internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.name")
}

///|
test "en_IN internet.username" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.internet_username(), "Vaijayanthi5")
}

///|
test "en_IN internet.url" {
  let f = @faker.Faker(seed=42, locales=@en_in.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.info/")
}
