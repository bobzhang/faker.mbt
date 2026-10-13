// Generated localized parity cases against the pinned upstream revision.

///|
test "ja person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "結衣")
}

///|
test "ja person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "石原")
}

///|
test "ja person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "吉川 結衣")
}

///|
test "ja location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "浩一市")
}

///|
test "ja location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "4丁目9番7号")
}

///|
test "ja location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "397-5110")
}

///|
test "ja phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "0975-11-0867")
}

///|
test "ja company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "株式会社吉川保険")
}

///|
test "ja person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "ja internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "ja location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "9丁目7番6号\n東理恵町\n鹿児島県\n821-1354",
  )
}

///|
test "ja date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "二月")
}

///|
test "ja food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ja.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "キャベツとカニの炒め物")
}
