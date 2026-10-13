///|
test "locale metadata parses" {
  assert_true(
    @en_in.locale().get("metadata.code") == Some(Json::string("en_IN")),
  )
}

///|
test "fallback chain" {
  let codes = @en_in.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_IN", "en", "base"])
}
