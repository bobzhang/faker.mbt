///|
test "locale metadata parses" {
  assert_true(
    @af_za.locale().get("metadata.code") == Some(Json::string("af_ZA")),
  )
}
