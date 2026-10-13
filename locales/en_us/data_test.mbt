///|
test "locale metadata parses" {
  assert_true(
    @en_us.locale().get("metadata.code") == Some(Json::string("en_US")),
  )
}

///|
test "fallback chain" {
  let codes = @en_us.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_US", "en", "base"])
}
