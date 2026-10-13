///|
test "locale metadata parses" {
  assert_true(@ro.locale().get("metadata.code") == Some(Json::string("ro")))
}

///|
test "fallback chain" {
  let codes = @ro.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["ro", "en", "base"])
}
