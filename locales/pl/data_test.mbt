///|
test "locale metadata parses" {
  assert_true(@pl.locale().get("metadata.code") == Some(Json::string("pl")))
}

///|
test "fallback chain" {
  let codes = @pl.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["pl", "en", "base"])
}
