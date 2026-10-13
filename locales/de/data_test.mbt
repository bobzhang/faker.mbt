///|
test "locale metadata parses" {
  assert_true(@de.locale().get("metadata.code") == Some(Json::string("de")))
}

///|
test "fallback chain" {
  let codes = @de.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["de", "en", "base"])
}
