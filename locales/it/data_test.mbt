///|
test "locale metadata parses" {
  assert_true(@it.locale().get("metadata.code") == Some(Json::string("it")))
}
