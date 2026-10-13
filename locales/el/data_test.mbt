///|
test "locale metadata parses" {
  assert_true(@el.locale().get("metadata.code") == Some(Json::string("el")))
}
