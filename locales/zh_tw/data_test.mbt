///|
test "locale metadata parses" {
  assert_true(
    @zh_tw.locale().get("metadata.code") == Some(Json::string("zh_TW")),
  )
}

///|
test "fallback chain" {
  let codes = @zh_tw.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["zh_TW", "en", "base"])
}
