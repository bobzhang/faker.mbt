///|
test "locale metadata parses" {
  assert_true(
    @en_gb.locale().get("metadata.code") == Some(Json::string("en_GB")),
  )
}
