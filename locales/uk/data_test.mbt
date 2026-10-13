///|
test "locale metadata parses" {
  assert_true(@uk.locale().get("metadata.code") == Some(Json::string("uk")))
}

///|
test "fallback chain" {
  let codes = @uk.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["uk", "en", "base"])
}
