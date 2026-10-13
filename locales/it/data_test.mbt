///|
test "locale metadata parses" {
  assert_true(@it.locale().get("metadata.code") == Some(Json::string("it")))
}

///|
test "fallback chain" {
  let codes = @it.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["it", "en", "base"])
}
