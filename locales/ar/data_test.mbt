///|
test "locale metadata parses" {
  assert_true(@ar.locale().get("metadata.code") == Some(Json::string("ar")))
}
