///|
test "locale metadata parses" {
  assert_true(@az.locale().get("metadata.code") == Some(Json::string("az")))
}

///|
test "fallback chain" {
  let codes = @az.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["az", "en", "base"])
}
