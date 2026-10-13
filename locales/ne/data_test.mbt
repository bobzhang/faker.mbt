///|
test "locale metadata parses" {
  assert_true(@ne.locale().get("metadata.code") == Some(Json::string("ne")))
}

///|
test "fallback chain" {
  let codes = @ne.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["ne", "en", "base"])
}
