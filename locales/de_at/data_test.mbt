///|
test "locale metadata parses" {
  assert_true(
    @de_at.locale().get("metadata.code") == Some(Json::string("de_AT")),
  )
}

///|
test "fallback chain" {
  let codes = @de_at.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["de_AT", "de", "en", "base"])
}
