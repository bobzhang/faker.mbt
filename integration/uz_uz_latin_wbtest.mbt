// Generated localized parity cases against the pinned upstream revision.

///|
test "uz_UZ_latin person.firstName" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.person_first_name(), "Uzbegim")
}

///|
test "uz_UZ_latin person.lastName" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.person_last_name(), "Rustamova")
}

///|
test "uz_UZ_latin person.fullName" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.person_full_name(), "Uzbegim Nosirova")
}

///|
test "uz_UZ_latin location.city" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.location_city(), "Juma")
}

///|
test "uz_UZ_latin location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.location_street_address(), "Mahmud Raifyev xiyoboni, 61a")
}

///|
test "uz_UZ_latin location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.location_zip_code(), "397511")
}

///|
test "uz_UZ_latin phone.number" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "uz_UZ_latin company.name" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.company_name(), "Nosirov Group")
}

///|
test "uz_UZ_latin person.bio" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "uz_UZ_latin internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "uz_UZ_latin location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(
    f.location_postal_address(),
    "G'ijduvon qishlog'i, 210\nTermiz\nSurxondaryo viloyati\n098211",
  )
}

///|
test "uz_UZ_latin date.month" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.date_month(), "Iyul")
}

///|
test "uz_UZ_latin food.dish" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "uz_UZ_latin lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "uz_UZ_latin internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "uz_UZ_latin internet.username" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.internet_username(), "Uzbegim5")
}

///|
test "uz_UZ_latin internet.url" {
  let f = @faker.Faker(seed=42, locales=@uz_uz_latin.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
