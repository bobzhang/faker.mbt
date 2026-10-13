// Generated localized parity cases against the pinned upstream revision.

///|
test "th person.firstName" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(f.person_first_name(), "ศุภกาญจน์")
}

///|
test "th person.lastName" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(
    f.person_last_name(),
    "เจียวค้างพลู-ฮะมงคล",
  )
}

///|
test "th person.fullName" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(
    f.person_full_name(),
    "ศุภกาญจน์ นรินทรกุล",
  )
}

///|
test "th location.city" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(f.location_city(), "เมืองนนทบุรี")
}

///|
test "th location.streetAddress" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(f.location_street_address(), "97 เยาวราช")
}

///|
test "th location.zipCode" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(f.location_zip_code(), "39750")
}

///|
test "th phone.number" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(f.phone_number(), "0 5975 1108")
}

///|
test "th company.name" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(f.company_name(), "ฮะมงคล Group")
}

///|
test "th person.bio" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(f.person_bio(), "traveler, philosopher, model")
}

///|
test "th internet.userAgent" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "th location.postalAddress" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(
    f.location_postal_address(),
    "7511 ข้าวสาร\nพิษณุโลก\nสมุทรสาคร\n09820",
  )
}

///|
test "th date.month" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(f.date_month(), "ธันวาคม")
}

///|
test "th food.dish" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(f.food_dish(), "Jicama Salad")
}

///|
test "th lorem.slug" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(f.lorem_slug(), "corrupti-virga-synagoga")
}

///|
test "th internet.domainName" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(f.internet_domain_name(), "hospitable-unit.net")
}

///|
test "th internet.username" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(
    f.internet_username(),
    "2so2t42sg2rl2sy2rx2rs2s92to.2s92sj2t02s92s72sj2rl2t42sl",
  )
}

///|
test "th internet.url" {
  let f = @faker.Faker(seed=42, locales=@th.locales())
  assert_eq(f.internet_url(), "https://weird-rawhide.net/")
}
