///|
test "locale metadata parses" {
  assert_true(@el.locale().get("metadata.code") == Some(Json::string("el")))
}

///|
test "fallback chain" {
  let codes = @el.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["el", "en", "base"])
}
