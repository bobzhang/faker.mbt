///|
test "locale metadata parses" {
  assert_true(
    @bn_bd.locale().get("metadata.code") == Some(Json::string("bn_BD")),
  )
}
