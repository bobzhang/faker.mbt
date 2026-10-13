// Generated localized parity cases against the pinned upstream revision.

///|
test "ru person.firstName" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.person_first_name(), "Фёкла")
}

///|
test "ru person.lastName" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.person_last_name(), "Родионова")
}

///|
test "ru person.fullName" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.person_full_name(), "Фёкла Морозова")
}

///|
test "ru location.city" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.location_city(), "Когалым")
}

///|
test "ru location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.location_street_address(), "ул. Сахалинская, 611")
}

///|
test "ru location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.location_zip_code(), "397511")
}

///|
test "ru phone.number" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.phone_number(), "(939)751-10-86")
}

///|
test "ru company.name" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.company_name(), "ФГУП СлюдянкаСбыт")
}

///|
test "ru person.bio" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "ru internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "ru location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(
    f.location_postal_address(),
    "Сахалинская площадь, 210\nУсть-Баргузин\nРеспублика Тыва\n098211",
  )
}

///|
test "ru date.month" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.date_month(), "июнь")
}

///|
test "ru food.dish" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "ru lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.lorem_slug(), "--")
}

///|
test "ru internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.su")
}

///|
test "ru internet.username" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.internet_username(), "Fekla5")
}

///|
test "ru internet.url" {
  let f = @faker.Faker(seed=42, locales=@ru.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.rus/")
}
