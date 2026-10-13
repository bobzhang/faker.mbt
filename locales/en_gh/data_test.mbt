///|
test "locale metadata parses" {
  assert_true(
    @en_gh.locale().get("metadata.code") == Some(Json::string("en_GH")),
  )
}

///|
test "fallback chain" {
  let codes = @en_gh.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_GH", "en", "base"])
}
