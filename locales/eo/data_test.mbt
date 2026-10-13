///|
test "locale metadata parses" {
  assert_true(@eo.locale().get("metadata.code") == Some(Json::string("eo")))
}

///|
test "fallback chain" {
  let codes = @eo.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["eo", "en", "base"])
}
