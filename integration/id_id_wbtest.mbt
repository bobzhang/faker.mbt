// Generated localized parity cases against the pinned upstream revision.

///|
test "id_ID person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "Sadina")
}

///|
test "id_ID person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "Rahimah")
}

///|
test "id_ID person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "Sadina Azzahra")
}

///|
test "id_ID location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "Blitar")
}

///|
test "id_ID location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "Psr. Cakrawangsa no 18")
}

///|
test "id_ID location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "39751")
}

///|
test "id_ID phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "(+62) 897 511 086")
}

///|
test "id_ID company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "Yayasan Febian (Persero) Tbk")
}

///|
test "id_ID person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "id_ID internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "id_ID location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.location_postal_address(),
    "Kpg. Febian no 86\nSitubondo\nPapua Pegunungan\n82113",
  )
}

///|
test "id_ID date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "Januari")
}

///|
test "id_ID food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @id_id.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "Jicama Salad")
}
