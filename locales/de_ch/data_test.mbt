///|
test "locale metadata parses" {
  assert_true(
    @de_ch.locale().get("metadata.code") == Some(Json::string("de_CH")),
  )
}

///|
test "fallback chain" {
  let codes = @de_ch.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["de_CH", "de", "en", "base"])
}
