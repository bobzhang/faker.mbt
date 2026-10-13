///|
test "locale metadata parses" {
  assert_true(@hu.locale().get("metadata.code") == Some(Json::string("hu")))
}
