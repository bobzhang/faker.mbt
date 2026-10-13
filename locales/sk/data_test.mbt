///|
test "locale metadata parses" {
  assert_true(@sk.locale().get("metadata.code") == Some(Json::string("sk")))
}

///|
test "fallback chain" {
  let codes = @sk.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["sk", "en", "base"])
}
