///|
test "locale metadata parses" {
  assert_true(
    @de_ch.locale().get("metadata.code") == Some(Json::string("de_CH")),
  )
}
