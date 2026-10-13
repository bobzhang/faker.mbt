// Generated localized parity cases against the pinned upstream revision.

///|
test "lv person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Ģertrūde")
}

///|
test "lv person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Sietniece-Pavlovska")
}

///|
test "lv person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Ģertrūde Pavlovska k-dze")
}

///|
test "lv location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Kārsava")
}

///|
test "lv location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Klāņu dambis 61")
}

///|
test "lv location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "LV9751")
}

///|
test "lv phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "+371 69751108")
}

///|
test "lv company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "SIA Siliņš")
}

///|
test "lv person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "lv internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "lv location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Virsaišu laukums 21\nAloja\nLudzas raj.\nLV-0982",
  )
}

///|
test "lv date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "janvāris")
}

///|
test "lv food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @lv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
