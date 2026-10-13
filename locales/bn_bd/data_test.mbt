///|
test "locale metadata parses" {
  assert_true(
    @bn_bd.locale().get("metadata.code") == Some(Json::string("bn_BD")),
  )
}

///|
test "fallback chain" {
  let codes = @bn_bd.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["bn_BD", "en", "base"])
}
