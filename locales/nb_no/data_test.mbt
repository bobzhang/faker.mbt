///|
test "locale metadata parses" {
  assert_true(
    @nb_no.locale().get("metadata.code") == Some(Json::string("nb_NO")),
  )
}

///|
test "fallback chain" {
  let codes = @nb_no.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["nb_NO", "en", "base"])
}
