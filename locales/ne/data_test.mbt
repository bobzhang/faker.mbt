///|
test "locale metadata parses" {
  assert_true(@ne.locale().get("metadata.code") == Some(Json::string("ne")))
}
