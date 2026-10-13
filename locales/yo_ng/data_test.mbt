///|
test "locale metadata parses" {
  assert_true(
    @yo_ng.locale().get("metadata.code") == Some(Json::string("yo_NG")),
  )
}

///|
test "fallback chain" {
  let codes = @yo_ng.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["yo_NG", "en", "base"])
}
