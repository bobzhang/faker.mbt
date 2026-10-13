///|
test "locale metadata parses" {
  assert_true(@lv.locale().get("metadata.code") == Some(Json::string("lv")))
}

///|
test "fallback chain" {
  let codes = @lv.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["lv", "en", "base"])
}
