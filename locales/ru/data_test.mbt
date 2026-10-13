///|
test "locale metadata parses" {
  assert_true(@ru.locale().get("metadata.code") == Some(Json::string("ru")))
}
