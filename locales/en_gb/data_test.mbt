///|
test "locale metadata parses" {
  assert_true(
    @en_gb.locale().get("metadata.code") == Some(Json::string("en_GB")),
  )
}

///|
test "fallback chain" {
  let codes = @en_gb.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_GB", "en", "base"])
}
