///|
test "locale metadata parses" {
  assert_true(@hy.locale().get("metadata.code") == Some(Json::string("hy")))
}

///|
test "fallback chain" {
  let codes = @hy.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["hy", "en", "base"])
}
