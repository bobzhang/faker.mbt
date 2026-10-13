///|
test "locale metadata parses" {
  assert_true(@az.locale().get("metadata.code") == Some(Json::string("az")))
}
