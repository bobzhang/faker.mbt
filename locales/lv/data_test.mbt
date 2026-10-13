///|
test "locale metadata parses" {
  assert_true(@lv.locale().get("metadata.code") == Some(Json::string("lv")))
}
