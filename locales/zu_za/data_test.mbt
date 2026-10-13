///|
test "locale metadata parses" {
  assert_true(
    @zu_za.locale().get("metadata.code") == Some(Json::string("zu_ZA")),
  )
}

///|
test "fallback chain" {
  let codes = @zu_za.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["zu_ZA", "en", "base"])
}
