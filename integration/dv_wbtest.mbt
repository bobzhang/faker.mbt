// Generated localized parity cases against the pinned upstream revision.

///|
test "dv person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "ޢާއިޝާ")
}

///|
test "dv person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "ޚާލިޞާ")
}

///|
test "dv person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "ޢާއިޝާ ޒުބައިދާ")
}

///|
test "dv location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "ދެ މޫސާ")
}

///|
test "dv location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "9751 ޚަދީޖާ މަގު")
}

///|
test "dv location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "dv phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "+960-7975110")
}

///|
test "dv company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.company_name(),
    "ސަމާލު ބުހްލޫލް ޡަހީރާ ގުރޫޕް",
  )
}

///|
test "dv person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "dv internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "dv location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "751 ޚަދީޖާ މަގު\nޟިފާފްދޫ\nGeorgia\n35426",
  )
}

///|
test "dv date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "މާރިޗު")
}

///|
test "dv food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @dv.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
