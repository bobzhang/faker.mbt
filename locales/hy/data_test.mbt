///|
test "locale metadata parses" {
  assert_true(@hy.locale().get("metadata.code") == Some(Json::string("hy")))
}
