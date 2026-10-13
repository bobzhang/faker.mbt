///|
test "locale metadata parses" {
  assert_true(@ko.locale().get("metadata.code") == Some(Json::string("ko")))
}
