///|
test "locale metadata parses" {
  assert_true(
    @zh_cn.locale().get("metadata.code") == Some(Json::string("zh_CN")),
  )
}

///|
test "fallback chain" {
  let codes = @zh_cn.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["zh_CN", "en", "base"])
}
