///|
test "locale metadata parses" {
  assert_true(@ru.locale().get("metadata.code") == Some(Json::string("ru")))
}

///|
test "fallback chain" {
  let codes = @ru.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["ru", "en", "base"])
}
