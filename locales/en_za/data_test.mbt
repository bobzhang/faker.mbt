///|
test "locale metadata parses" {
  assert_true(
    @en_za.locale().get("metadata.code") == Some(Json::string("en_ZA")),
  )
}
