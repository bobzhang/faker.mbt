///|
test "locale metadata parses" {
  assert_true(
    @mn_mn_cyrl.locale().get("metadata.code") ==
    Some(Json::string("mn_MN_cyrl")),
  )
}

///|
test "fallback chain" {
  let codes = @mn_mn_cyrl.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["mn_MN_cyrl", "en", "base"])
}
