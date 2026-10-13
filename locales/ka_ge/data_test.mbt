///|
test "locale metadata parses" {
  assert_true(
    @ka_ge.locale().get("metadata.code") == Some(Json::string("ka_GE")),
  )
}

///|
test "fallback chain" {
  let codes = @ka_ge.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["ka_GE", "en", "base"])
}
