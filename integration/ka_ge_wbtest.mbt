// Generated localized parity cases against the pinned upstream revision.

///|
test "ka_GE person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "ჭოლა")
}

///|
test "ka_GE person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "ჩიხრაძე")
}

///|
test "ka_GE person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "ჭოლა სააკაშვილი")
}

///|
test "ka_GE location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "ქვემო ნათია")
}

///|
test "ka_GE location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_street_address(),
    "ისპასჰანლის ხეივანი 6",
  )
}

///|
test "ka_GE location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "0139")
}

///|
test "ka_GE phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "+995 597 511086")
}

///|
test "ka_GE company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "შპს ნათია გრუპი")
}

///|
test "ka_GE person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "ka_GE internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "ka_GE location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "წულაძის ჩიხი 21\nქვემო ჟამუტასოფელი\nTennessee\n0121",
  )
}

///|
test "ka_GE date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "ka_GE food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ka_ge.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
