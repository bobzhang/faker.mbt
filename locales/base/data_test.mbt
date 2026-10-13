///|
test "locale metadata parses" {
  assert_true(@base.locale().get("metadata.code") == Some(Json::string("base")))
}
