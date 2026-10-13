///|
test "locale metadata parses" {
  assert_true(
    @ta_in.locale().get("metadata.code") == Some(Json::string("ta_IN")),
  )
}

///|
test "fallback chain" {
  let codes = @ta_in.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["ta_IN", "en", "base"])
}
