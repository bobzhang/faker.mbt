///|
test "locale metadata parses" {
  assert_true(@da.locale().get("metadata.code") == Some(Json::string("da")))
}
