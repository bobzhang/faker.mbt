///|
test "locale metadata parses" {
  assert_true(
    @cs_cz.locale().get("metadata.code") == Some(Json::string("cs_CZ")),
  )
}
