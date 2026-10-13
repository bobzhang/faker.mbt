///|
test "locale metadata parses" {
  assert_true(
    @yo_ng.locale().get("metadata.code") == Some(Json::string("yo_NG")),
  )
}
