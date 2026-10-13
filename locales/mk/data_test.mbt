///|
test "locale metadata parses" {
  assert_true(@mk.locale().get("metadata.code") == Some(Json::string("mk")))
}
