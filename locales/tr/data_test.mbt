///|
test "locale metadata parses" {
  assert_true(@tr.locale().get("metadata.code") == Some(Json::string("tr")))
}

///|
test "fallback chain" {
  let codes = @tr.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["tr", "en", "base"])
}
