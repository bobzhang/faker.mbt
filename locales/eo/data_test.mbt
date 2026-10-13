///|
test "locale metadata parses" {
  assert_true(@eo.locale().get("metadata.code") == Some(Json::string("eo")))
}
