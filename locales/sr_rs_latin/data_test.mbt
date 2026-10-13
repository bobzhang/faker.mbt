///|
test "locale metadata parses" {
  assert_true(
    @sr_rs_latin.locale().get("metadata.code") ==
    Some(Json::string("sr_RS_latin")),
  )
}

///|
test "fallback chain" {
  let codes = @sr_rs_latin.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["sr_RS_latin", "en", "base"])
}
