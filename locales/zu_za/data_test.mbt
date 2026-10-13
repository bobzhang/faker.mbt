///|
test "locale metadata parses" {
  assert_true(
    @zu_za.locale().get("metadata.code") == Some(Json::string("zu_ZA")),
  )
}
