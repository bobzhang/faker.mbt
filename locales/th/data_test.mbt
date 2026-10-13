///|
test "locale metadata parses" {
  assert_true(@th.locale().get("metadata.code") == Some(Json::string("th")))
}
