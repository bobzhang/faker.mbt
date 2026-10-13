///|
test "locale metadata parses" {
  assert_true(
    @sl_si.locale().get("metadata.code") == Some(Json::string("sl_SI")),
  )
}

///|
test "fallback chain" {
  let codes = @sl_si.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["sl_SI", "en", "base"])
}
