///|
test "locale metadata parses" {
  assert_true(
    @af_za.locale().get("metadata.code") == Some(Json::string("af_ZA")),
  )
}

///|
test "fallback chain" {
  let codes = @af_za.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["af_ZA", "en", "base"])
}
