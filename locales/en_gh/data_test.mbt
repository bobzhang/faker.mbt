///|
test "locale metadata parses" {
  assert_true(
    @en_gh.locale().get("metadata.code") == Some(Json::string("en_GH")),
  )
}
