///|
test "locale metadata parses" {
  assert_true(
    @sr_rs_latin.locale().get("metadata.code") ==
    Some(Json::string("sr_RS_latin")),
  )
}
