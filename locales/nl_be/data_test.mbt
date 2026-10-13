///|
test "locale metadata parses" {
  assert_true(
    @nl_be.locale().get("metadata.code") == Some(Json::string("nl_BE")),
  )
}
