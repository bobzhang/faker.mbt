// Generated localized parity cases against the pinned upstream revision.

///|
test "vi person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Thụy Du")
}

///|
test "vi person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Vũ")
}

///|
test "vi person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Thụy Du Hồ")
}

///|
test "vi location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Long Xuyên")
}

///|
test "vi location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "9751 Phượng Nga Rapid")
}

///|
test "vi location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "vi phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "029 7511 0867")
}

///|
test "vi company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Cty TNHH Trần")
}

///|
test "vi person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "vi internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "vi location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "751 Phượng Nga Rapid\nAn Nhơn\nTây Ninh\n21135",
  )
}

///|
test "vi date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "Tháng Hai")
}

///|
test "vi food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @vi.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
