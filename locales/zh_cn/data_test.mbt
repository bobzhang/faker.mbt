///|
test "locale metadata parses" {
  assert_true(
    @zh_cn.locale().get("metadata.code") == Some(Json::string("zh_CN")),
  )
}
