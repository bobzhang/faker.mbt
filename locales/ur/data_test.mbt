///|
test "locale metadata parses" {
  assert_true(@ur.locale().get("metadata.code") == Some(Json::string("ur")))
}
