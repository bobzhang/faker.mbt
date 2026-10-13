///|
test "locale metadata parses" {
  assert_true(
    @en_hk.locale().get("metadata.code") == Some(Json::string("en_HK")),
  )
}
