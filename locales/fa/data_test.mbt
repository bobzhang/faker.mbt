///|
test "locale metadata parses" {
  assert_true(@fa.locale().get("metadata.code") == Some(Json::string("fa")))
}

///|
test "fallback chain" {
  let codes = @fa.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["fa", "en", "base"])
}
