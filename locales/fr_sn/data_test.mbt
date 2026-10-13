///|
test "locale metadata parses" {
  assert_true(
    @fr_sn.locale().get("metadata.code") == Some(Json::string("fr_SN")),
  )
}

///|
test "fallback chain" {
  let codes = @fr_sn.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["fr_SN", "fr", "en", "base"])
}
