///|
test "locale metadata parses" {
  assert_true(@fr.locale().get("metadata.code") == Some(Json::string("fr")))
}

///|
test "fallback chain" {
  let codes = @fr.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["fr", "en", "base"])
}
