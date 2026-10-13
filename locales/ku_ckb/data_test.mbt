///|
test "locale metadata parses" {
  assert_true(
    @ku_ckb.locale().get("metadata.code") == Some(Json::string("ku_ckb")),
  )
}
