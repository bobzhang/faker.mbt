///|
test "locale metadata parses" {
  assert_true(@ro.locale().get("metadata.code") == Some(Json::string("ro")))
}
