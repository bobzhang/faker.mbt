///|
test "locale metadata parses" {
  assert_true(
    @pt_pt.locale().get("metadata.code") == Some(Json::string("pt_PT")),
  )
}
