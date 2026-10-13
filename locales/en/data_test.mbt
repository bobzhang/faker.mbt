///|
test "locale metadata parses" {
  assert_true(@en.locale().get("metadata.code") == Some(Json::string("en")))
}

///|
test "fallback chain" {
  let codes = @en.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["en", "base"])
}
