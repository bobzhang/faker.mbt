///|
test "locale metadata parses" {
  assert_true(@pl.locale().get("metadata.code") == Some(Json::string("pl")))
}
