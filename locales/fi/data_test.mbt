///|
test "locale metadata parses" {
  assert_true(@fi.locale().get("metadata.code") == Some(Json::string("fi")))
}
