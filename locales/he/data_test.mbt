///|
test "locale metadata parses" {
  assert_true(@he.locale().get("metadata.code") == Some(Json::string("he")))
}
