///|
test "locale metadata parses" {
  assert_true(@sk.locale().get("metadata.code") == Some(Json::string("sk")))
}
