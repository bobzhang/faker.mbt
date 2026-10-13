///|
test "locale metadata parses" {
  assert_true(
    @en_ie.locale().get("metadata.code") == Some(Json::string("en_IE")),
  )
}

///|
test "fallback chain" {
  let codes = @en_ie.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_IE", "en", "base"])
}
