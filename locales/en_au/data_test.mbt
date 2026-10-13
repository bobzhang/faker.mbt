///|
test "locale metadata parses" {
  assert_true(
    @en_au.locale().get("metadata.code") == Some(Json::string("en_AU")),
  )
}
