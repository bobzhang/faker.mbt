///|
test "locale metadata parses" {
  assert_true(
    @cs_cz.locale().get("metadata.code") == Some(Json::string("cs_CZ")),
  )
}

///|
test "fallback chain" {
  let codes = @cs_cz.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["cs_CZ", "en", "base"])
}
