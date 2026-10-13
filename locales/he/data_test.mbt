///|
test "locale metadata parses" {
  assert_true(@he.locale().get("metadata.code") == Some(Json::string("he")))
}

///|
test "fallback chain" {
  let codes = @he.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["he", "en", "base"])
}
