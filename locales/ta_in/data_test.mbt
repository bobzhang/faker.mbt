///|
test "locale metadata parses" {
  assert_true(
    @ta_in.locale().get("metadata.code") == Some(Json::string("ta_IN")),
  )
}
