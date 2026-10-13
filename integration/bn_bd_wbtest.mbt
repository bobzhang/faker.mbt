// Generated localized parity cases against the pinned upstream revision.

///|
test "bn_BD person.firstName" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.person_first_name(), "Nikita")
}

///|
test "bn_BD person.lastName" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.person_last_name(), "Reynolds-Mitchell")
}

///|
test "bn_BD person.fullName" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.person_full_name(), "Nikita Cormier")
}

///|
test "bn_BD location.city" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.location_city(), "দেওয়ানগঞ্জ")
}

///|
test "bn_BD location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.location_street_address(), "9751 Lilliana Rapid")
}

///|
test "bn_BD location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.location_zip_code(), "97511")
}

///|
test "bn_BD phone.number" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.phone_number(), "975.310.8670 x982")
}

///|
test "bn_BD company.name" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.company_name(), "Mitchell Group")
}

///|
test "bn_BD person.bio" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "bn_BD internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "bn_BD location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(
    f.location_postal_address(),
    "751 Lilliana Rapid\nআড়াইহাজার\nরংপুর\n11354",
  )
}

///|
test "bn_BD date.month" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.date_month(), "জুন")
}

///|
test "bn_BD food.dish" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "bn_BD lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "bn_BD internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "bn_BD internet.username" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.internet_username(), "Nikita.Cormier")
}

///|
test "bn_BD internet.url" {
  let f = @faker.Faker(seed=42, locales=@bn_bd.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
