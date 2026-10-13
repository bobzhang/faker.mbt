///|
test "locale metadata parses" {
  assert_true(
    @en_us.locale().get("metadata.code") == Some(Json::string("en_US")),
  )
}
