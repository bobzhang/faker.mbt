///|
test "locale metadata parses" {
  assert_true(@es.locale().get("metadata.code") == Some(Json::string("es")))
}
