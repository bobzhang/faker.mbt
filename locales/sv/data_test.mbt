///|
test "locale metadata parses" {
  assert_true(@sv.locale().get("metadata.code") == Some(Json::string("sv")))
}

///|
test "fallback chain" {
  let codes = @sv.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["sv", "en", "base"])
}
