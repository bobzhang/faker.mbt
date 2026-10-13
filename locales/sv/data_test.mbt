///|
test "locale metadata parses" {
  assert_true(@sv.locale().get("metadata.code") == Some(Json::string("sv")))
}
