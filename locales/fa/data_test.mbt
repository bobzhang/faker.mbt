///|
test "locale metadata parses" {
  assert_true(@fa.locale().get("metadata.code") == Some(Json::string("fa")))
}
