// Generated localized parity cases against the pinned upstream revision.

///|
test "ko person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "지우")
}

///|
test "ko person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "인")
}

///|
test "ko person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "나지우")
}

///|
test "ko location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "구미군")
}

///|
test "ko location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "9751 매기대로")
}

///|
test "ko location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "975-110")
}

///|
test "ko phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "097-511-0867")
}

///|
test "ko company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "한국 민결")
}

///|
test "ko person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "ko internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "ko location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "751 매기대로\n전주시\n강원특별자치도\n82113",
  )
}

///|
test "ko date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "2월")
}

///|
test "ko food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ko.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
