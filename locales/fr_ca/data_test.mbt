///|
test "locale metadata parses" {
  assert_true(
    @fr_ca.locale().get("metadata.code") == Some(Json::string("fr_CA")),
  )
}

///|
test "fallback chain" {
  let codes = @fr_ca.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["fr_CA", "fr", "en", "base"])
}
