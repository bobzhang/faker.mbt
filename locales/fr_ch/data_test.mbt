///|
test "locale metadata parses" {
  assert_true(
    @fr_ch.locale().get("metadata.code") == Some(Json::string("fr_CH")),
  )
}

///|
test "fallback chain" {
  let codes = @fr_ch.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["fr_CH", "fr", "en", "base"])
}
