///|
test "locale metadata parses" {
  assert_true(
    @ku_ckb.locale().get("metadata.code") == Some(Json::string("ku_ckb")),
  )
}

///|
test "fallback chain" {
  let codes = @ku_ckb.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["ku_ckb", "en", "base"])
}
