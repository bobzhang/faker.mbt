///|
test "locale metadata parses" {
  assert_true(
    @en_ca.locale().get("metadata.code") == Some(Json::string("en_CA")),
  )
}

///|
test "fallback chain" {
  let codes = @en_ca.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_CA", "en", "base"])
}
