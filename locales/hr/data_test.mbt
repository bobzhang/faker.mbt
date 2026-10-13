///|
test "locale metadata parses" {
  assert_true(@hr.locale().get("metadata.code") == Some(Json::string("hr")))
}
