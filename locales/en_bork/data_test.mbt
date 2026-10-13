///|
test "locale metadata parses" {
  assert_true(
    @en_bork.locale().get("metadata.code") == Some(Json::string("en_BORK")),
  )
}
