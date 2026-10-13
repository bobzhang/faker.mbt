///|
test "locale metadata parses" {
  assert_true(
    @en_ng.locale().get("metadata.code") == Some(Json::string("en_NG")),
  )
}
