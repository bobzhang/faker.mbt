///|
test "locale metadata parses" {
  assert_true(
    @en_ie.locale().get("metadata.code") == Some(Json::string("en_IE")),
  )
}
