///|
test "locale metadata parses" {
  assert_true(@nl.locale().get("metadata.code") == Some(Json::string("nl")))
}
