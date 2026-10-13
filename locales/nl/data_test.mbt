///|
test "locale metadata parses" {
  assert_true(@nl.locale().get("metadata.code") == Some(Json::string("nl")))
}

///|
test "fallback chain" {
  let codes = @nl.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["nl", "en", "base"])
}
