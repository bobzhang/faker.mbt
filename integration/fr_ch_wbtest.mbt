// Generated localized parity cases against the pinned upstream revision.

///|
test "fr_CH person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Mira")
}

///|
test "fr_CH person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Pinon")
}

///|
test "fr_CH person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Mme Mira Burckhardt")
}

///|
test "fr_CH location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Köniz")
}

///|
test "fr_CH location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "975 Rue de la Blanche-Eglise")
}

///|
test "fr_CH location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "4975")
}

///|
test "fr_CH phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "0041 76 975 11 08")
}

///|
test "fr_CH company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Meier et Beerli")
}

///|
test "fr_CH person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "fr_CH internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "fr_CH location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "7 Place de la Blanche-Eglise\nBuchs\nValai\n6709",
  )
}

///|
test "fr_CH date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "Janvier")
}

///|
test "fr_CH food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @fr_ch.locale(),
    @fr.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
