///|
test "locale metadata parses" {
  assert_true(@uk.locale().get("metadata.code") == Some(Json::string("uk")))
}
