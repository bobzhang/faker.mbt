///|
test "locale metadata parses" {
  assert_true(
    @ka_ge.locale().get("metadata.code") == Some(Json::string("ka_GE")),
  )
}
