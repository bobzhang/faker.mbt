///|
test "locale metadata parses" {
  assert_true(@mk.locale().get("metadata.code") == Some(Json::string("mk")))
}

///|
test "fallback chain" {
  let codes = @mk.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["mk", "en", "base"])
}
