///|
test "locale metadata parses" {
  assert_true(
    @mn_mn_cyrl.locale().get("metadata.code") ==
    Some(Json::string("mn_MN_cyrl")),
  )
}
