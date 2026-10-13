///|
test "locale metadata parses" {
  assert_true(@tr.locale().get("metadata.code") == Some(Json::string("tr")))
}
