// Generated localized parity cases against the pinned upstream revision.

///|
test "zh_CN person.firstName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_first_name(), "绍辉")
}

///|
test "zh_CN person.lastName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_last_name(), "薛")
}

///|
test "zh_CN person.fullName" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_full_name(), "向绍辉")
}

///|
test "zh_CN location.city" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_city(), "宁阳市")
}

///|
test "zh_CN location.streetAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_street_address(), "薛侬20867号")
}

///|
test "zh_CN location.zipCode" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_zip_code(), "397511")
}

///|
test "zh_CN phone.number" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.phone_number(), "097-51108670")
}

///|
test "zh_CN company.name" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.company_name(), "长海市哲新传媒（集团）有限公司")
}

///|
test "zh_CN person.bio" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.person_bio(), "退伍军人，个人，领导者")
}

///|
test "zh_CN internet.userAgent" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(
    f.internet_user_agent(),
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/118.0",
  )
}

///|
test "zh_CN location.postalAddress" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.location_postal_address(), "贵州省济南市长孙侬19号")
}

///|
test "zh_CN date.month" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.date_month(), "二月")
}

///|
test "zh_CN food.dish" {
  let f = @faker.Faker::new(seed=42, locales=[
    @zh_cn.locale(),
    @en.locale(),
    @base.locale(),
  ])
  assert_eq(f.food_dish(), "芹菜炒猪肉")
}
