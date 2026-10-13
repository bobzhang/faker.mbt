// Generated localized parity cases against the pinned upstream revision.

///|
test "ro_MD person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Svetlana")
}

///|
test "ro_MD person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Popova")
}

///|
test "ro_MD person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Svetlana Busuioc")
}

///|
test "ro_MD location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Municipiu Chiril")
}

///|
test "ro_MD location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_street_address(),
    "Bulevardul Veronica Micle, Bloc 61/20",
  )
}

///|
test "ro_MD location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "MD-3975")
}

///|
test "ro_MD phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "022397511")
}

///|
test "ro_MD company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Mocanu Group")
}

///|
test "ro_MD person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "ro_MD internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "ro_MD location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Str Rares, Bloc 21/18\nVadul lui Isac, MD-0982",
  )
}

///|
test "ro_MD date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "Ianuarie")
}

///|
test "ro_MD food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @ro_md.locale(),
    @ro.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
