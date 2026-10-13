///|
test "locale metadata parses" {
  assert_true(@hr.locale().get("metadata.code") == Some(Json::string("hr")))
}

///|
test "fallback chain" {
  let codes = @hr.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["hr", "en", "base"])
}
