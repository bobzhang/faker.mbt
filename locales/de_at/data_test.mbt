///|
test "locale metadata parses" {
  assert_true(
    @de_at.locale().get("metadata.code") == Some(Json::string("de_AT")),
  )
}
