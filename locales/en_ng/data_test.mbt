///|
test "locale metadata parses" {
  assert_true(
    @en_ng.locale().get("metadata.code") == Some(Json::string("en_NG")),
  )
}

///|
test "fallback chain" {
  let codes = @en_ng.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_NG", "en", "base"])
}
