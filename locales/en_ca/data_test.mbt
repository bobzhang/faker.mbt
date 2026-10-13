///|
test "locale metadata parses" {
  assert_true(
    @en_ca.locale().get("metadata.code") == Some(Json::string("en_CA")),
  )
}
