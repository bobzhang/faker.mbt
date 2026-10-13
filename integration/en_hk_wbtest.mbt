// Generated localized parity cases against the pinned upstream revision.

///|
test "en_HK person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Nikita")
}

///|
test "en_HK person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Tong")
}

///|
test "en_HK person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Nikita Chung")
}

///|
test "en_HK location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Lai Kok")
}

///|
test "en_HK location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "97 Lung Lung Street")
}

///|
test "en_HK location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  try f.location_zip_code() catch {
    _ => ()
  } noraise {
    _ => fail("upstream raises for this missing locale definition")
  }
}

///|
test "en_HK phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "4975 1108")
}

///|
test "en_HK company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Shiu Co. Ltd.")
}

///|
test "en_HK person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "en_HK internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "en_HK location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "7 Lung Lung Street\nTsing Yi, New Territories",
  )
}

///|
test "en_HK date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "en_HK food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @en_hk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
