///|
test "locale metadata parses" {
  assert_true(@fr.locale().get("metadata.code") == Some(Json::string("fr")))
}
