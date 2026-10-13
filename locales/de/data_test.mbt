///|
test "locale metadata parses" {
  assert_true(@de.locale().get("metadata.code") == Some(Json::string("de")))
}
