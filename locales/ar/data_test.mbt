///|
test "locale metadata parses" {
  assert_true(@ar.locale().get("metadata.code") == Some(Json::string("ar")))
}

///|
test "fallback chain" {
  let codes = @ar.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["ar", "en", "base"])
}
