// Generated localized parity cases against the pinned upstream revision.

///|
test "sr_RS_latin person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Vujica")
}

///|
test "sr_RS_latin person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Radonjić-Lelović")
}

///|
test "sr_RS_latin person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Vujica Lelović")
}

///|
test "sr_RS_latin location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Pančevo")
}

///|
test "sr_RS_latin location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Jonska 751")
}

///|
test "sr_RS_latin location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "sr_RS_latin phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "975 110 8670")
}

///|
test "sr_RS_latin company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Lelović Group")
}

///|
test "sr_RS_latin person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "sr_RS_latin internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "sr_RS_latin location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Ćukovačka 611\nBor\nPodunavski okrug\n70982",
  )
}

///|
test "sr_RS_latin date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "januar")
}

///|
test "sr_RS_latin food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @sr_rs_latin.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
