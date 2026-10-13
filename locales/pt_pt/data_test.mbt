///|
test "locale metadata parses" {
  assert_true(
    @pt_pt.locale().get("metadata.code") == Some(Json::string("pt_PT")),
  )
}

///|
test "fallback chain" {
  let codes = @pt_pt.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["pt_PT", "en", "base"])
}
