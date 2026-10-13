///|
test "locale metadata parses" {
  assert_true(@ur.locale().get("metadata.code") == Some(Json::string("ur")))
}

///|
test "fallback chain" {
  let codes = @ur.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["ur", "en", "base"])
}
