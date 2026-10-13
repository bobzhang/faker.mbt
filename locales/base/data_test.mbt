///|
test "locale metadata parses" {
  assert_true(@base.locale().get("metadata.code") == Some(Json::string("base")))
}

///|
test "fallback chain" {
  let codes = @base.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["base"])
}
