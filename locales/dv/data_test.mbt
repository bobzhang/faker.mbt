///|
test "locale metadata parses" {
  assert_true(@dv.locale().get("metadata.code") == Some(Json::string("dv")))
}
