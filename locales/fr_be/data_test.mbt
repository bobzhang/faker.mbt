///|
test "locale metadata parses" {
  assert_true(
    @fr_be.locale().get("metadata.code") == Some(Json::string("fr_BE")),
  )
}

///|
test "fallback chain" {
  let codes = @fr_be.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["fr_BE", "fr", "en", "base"])
}
