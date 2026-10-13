// Generated localized parity cases against the pinned upstream revision.

///|
test "zh_TW person.firstName" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.person_first_name(), "鶴軒")
}

///|
test "zh_TW person.lastName" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.person_last_name(), "邱")
}

///|
test "zh_TW person.fullName" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.person_full_name(), "蔣鶴軒")
}

///|
test "zh_TW location.city" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.location_city(), "新竹市")
}

///|
test "zh_TW location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.location_street_address(), "邱南路2086號")
}

///|
test "zh_TW location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.location_zip_code(), "397511")
}

///|
test "zh_TW phone.number" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.phone_number(), "02-97511086")
}

///|
test "zh_TW company.name" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.company_name(), "蔣 Group")
}

///|
test "zh_TW person.bio" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "zh_TW internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "zh_TW location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(
    f.location_postal_address(),
    "蔣街1867號\n臺北市\n福建省\n113542",
  )
}

///|
test "zh_TW date.month" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.date_month(), "2月")
}

///|
test "zh_TW food.dish" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "zh_TW lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "zh_TW internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "zh_TW internet.username" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.internet_username(), "v5gs7m5")
}

///|
test "zh_TW internet.url" {
  let f = @faker.Faker(seed=42, locales=@zh_tw.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.name/")
}
