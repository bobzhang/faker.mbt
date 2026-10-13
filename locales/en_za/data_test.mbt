///|
test "locale metadata parses" {
  assert_true(
    @en_za.locale().get("metadata.code") == Some(Json::string("en_ZA")),
  )
}

///|
test "fallback chain" {
  let codes = @en_za.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_ZA", "en", "base"])
}
