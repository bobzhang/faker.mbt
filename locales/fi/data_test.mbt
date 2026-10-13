///|
test "locale metadata parses" {
  assert_true(@fi.locale().get("metadata.code") == Some(Json::string("fi")))
}

///|
test "fallback chain" {
  let codes = @fi.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["fi", "en", "base"])
}
