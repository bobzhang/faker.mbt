///|
test "locale metadata parses" {
  assert_true(
    @en_bork.locale().get("metadata.code") == Some(Json::string("en_BORK")),
  )
}

///|
test "fallback chain" {
  let codes = @en_bork.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_BORK", "en", "base"])
}
