///|
test "locale metadata parses" {
  assert_true(
    @fr_ch.locale().get("metadata.code") == Some(Json::string("fr_CH")),
  )
}
