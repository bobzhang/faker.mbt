///|
test "locale metadata parses" {
  assert_true(@th.locale().get("metadata.code") == Some(Json::string("th")))
}

///|
test "fallback chain" {
  let codes = @th.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["th", "en", "base"])
}
