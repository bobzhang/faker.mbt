///|
test "locale metadata parses" {
  assert_true(@da.locale().get("metadata.code") == Some(Json::string("da")))
}

///|
test "fallback chain" {
  let codes = @da.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["da", "en", "base"])
}
