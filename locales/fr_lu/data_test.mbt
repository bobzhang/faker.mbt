///|
test "locale metadata parses" {
  assert_true(
    @fr_lu.locale().get("metadata.code") == Some(Json::string("fr_LU")),
  )
}
