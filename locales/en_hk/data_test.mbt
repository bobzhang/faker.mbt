///|
test "locale metadata parses" {
  assert_true(
    @en_hk.locale().get("metadata.code") == Some(Json::string("en_HK")),
  )
}

///|
test "fallback chain" {
  let codes = @en_hk.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_HK", "en", "base"])
}
