///|
test "locale metadata parses" {
  assert_true(
    @ku_kmr_latin.locale().get("metadata.code") ==
    Some(Json::string("ku_kmr_latin")),
  )
}

///|
test "fallback chain" {
  let codes = @ku_kmr_latin.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["ku_kmr_latin", "en", "base"])
}
