///|
test "locale metadata parses" {
  assert_true(
    @fr_be.locale().get("metadata.code") == Some(Json::string("fr_BE")),
  )
}
