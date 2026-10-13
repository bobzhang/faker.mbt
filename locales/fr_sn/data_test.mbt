///|
test "locale metadata parses" {
  assert_true(
    @fr_sn.locale().get("metadata.code") == Some(Json::string("fr_SN")),
  )
}
