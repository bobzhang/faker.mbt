///|
test "locale metadata parses" {
  assert_true(
    @fr_lu.locale().get("metadata.code") == Some(Json::string("fr_LU")),
  )
}

///|
test "fallback chain" {
  let codes = @fr_lu.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["fr_LU", "fr", "en", "base"])
}
