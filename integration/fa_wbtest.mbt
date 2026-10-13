// Generated localized parity cases against the pinned upstream revision.

///|
test "fa person.firstName" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.person_first_name(), "همراه")
}

///|
test "fa person.lastName" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.person_last_name(), "هاشمی رفسنجانی")
}

///|
test "fa person.fullName" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.person_full_name(), "همراه فانی")
}

///|
test "fa location.city" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.location_city(), "اسلام‌شهر")
}

///|
test "fa location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.location_street_address(), "کوچه رامین, پلاک 6")
}

///|
test "fa location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.location_zip_code(), "39751-10867")
}

///|
test "fa phone.number" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.phone_number(), "035-97511086")
}

///|
test "fa company.name" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.company_name(), "میردامادی, عصار و نوبختی")
}

///|
test "fa person.bio" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "fa internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "fa location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(
    f.location_postal_address(),
    "بلوار شهید مطهری, پلاک 2\nقم\nمازندران\n67098-21135",
  )
}

///|
test "fa date.month" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.date_month(), "بهمن")
}

///|
test "fa food.dish" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "fa lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.lorem_slug(), "--")
}

///|
test "fa internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.internet_domain_name(), "peebwps-feehnlhp.com")
}

///|
test "fa internet.username" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.internet_username(), "hmrah.fany")
}

///|
test "fa internet.url" {
  let f = @faker.Faker(seed=42, locales=@fa.locales())
  assert_eq(f.internet_url(), "https://eebwps-feehnlhp.com/")
}
