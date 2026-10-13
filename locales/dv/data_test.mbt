///|
test "locale metadata parses" {
  assert_true(@dv.locale().get("metadata.code") == Some(Json::string("dv")))
}

///|
test "fallback chain" {
  let codes = @dv.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["dv", "en", "base"])
}
