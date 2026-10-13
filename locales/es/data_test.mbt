///|
test "locale metadata parses" {
  assert_true(@es.locale().get("metadata.code") == Some(Json::string("es")))
}

///|
test "fallback chain" {
  let codes = @es.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["es", "en", "base"])
}
