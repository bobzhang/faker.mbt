// Generated localized parity cases against the pinned upstream revision.

///|
test "da person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Tine")
}

///|
test "da person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Møller-Knudsen")
}

///|
test "da person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Tine Knudsen")
}

///|
test "da location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Høng")
}

///|
test "da location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Jagtvej 75B")
}

///|
test "da location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "3975")
}

///|
test "da phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "97511086")
}

///|
test "da company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Vejle Visioner")
}

///|
test "da person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "da internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "da location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Østre Alle 61A\nFredericia\nSyddanmark\n6709",
  )
}

///|
test "da date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "januar")
}

///|
test "da food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @da.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
