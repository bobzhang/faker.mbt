///|
test "locale metadata parses" {
  assert_true(@ja.locale().get("metadata.code") == Some(Json::string("ja")))
}
