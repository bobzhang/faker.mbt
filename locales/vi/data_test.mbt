///|
test "locale metadata parses" {
  assert_true(@vi.locale().get("metadata.code") == Some(Json::string("vi")))
}

///|
test "fallback chain" {
  let codes = @vi.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["vi", "en", "base"])
}
