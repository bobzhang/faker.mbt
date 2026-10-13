///|
test "locale metadata parses" {
  assert_true(
    @en_au.locale().get("metadata.code") == Some(Json::string("en_AU")),
  )
}

///|
test "fallback chain" {
  let codes = @en_au.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_AU", "en", "base"])
}
