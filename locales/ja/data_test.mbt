///|
test "locale metadata parses" {
  assert_true(@ja.locale().get("metadata.code") == Some(Json::string("ja")))
}

///|
test "fallback chain" {
  let codes = @ja.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["ja", "en", "base"])
}
