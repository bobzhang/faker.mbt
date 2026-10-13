///|
test "locale metadata parses" {
  assert_true(
    @en_in.locale().get("metadata.code") == Some(Json::string("en_IN")),
  )
}
