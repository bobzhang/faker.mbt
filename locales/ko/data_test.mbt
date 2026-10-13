///|
test "locale metadata parses" {
  assert_true(@ko.locale().get("metadata.code") == Some(Json::string("ko")))
}

///|
test "fallback chain" {
  let codes = @ko.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["ko", "en", "base"])
}
