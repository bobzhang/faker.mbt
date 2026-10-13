///|
test "locale metadata parses" {
  assert_true(
    @sl_si.locale().get("metadata.code") == Some(Json::string("sl_SI")),
  )
}
