///|
test "locale metadata parses" {
  assert_true(
    @fr_ca.locale().get("metadata.code") == Some(Json::string("fr_CA")),
  )
}
