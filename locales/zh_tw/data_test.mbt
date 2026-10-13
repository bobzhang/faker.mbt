///|
test "locale metadata parses" {
  assert_true(
    @zh_tw.locale().get("metadata.code") == Some(Json::string("zh_TW")),
  )
}
