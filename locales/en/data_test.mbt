///|
test "locale metadata parses" {
  assert_true(@en.locale().get("metadata.code") == Some(Json::string("en")))
}
