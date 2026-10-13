// Generated localized parity cases against the pinned upstream revision.

///|
test "sk person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Perla")
}

///|
test "sk person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Samsonová")
}

///|
test "sk person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Perla Dvončová Phd.")
}

///|
test "sk location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Levice")
}

///|
test "sk location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Kulíškova 751")
}

///|
test "sk location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "975 11")
}

///|
test "sk phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "09 7511 0867")
}

///|
test "sk company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Mojžiš a.s.")
}

///|
test "sk person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "sk internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "sk location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Vranovská 611\nBratislava I\nPrešovský\n09 821",
  )
}

///|
test "sk date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "January")
}

///|
test "sk food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sk.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
