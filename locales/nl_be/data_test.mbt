///|
test "locale metadata parses" {
  assert_true(
    @nl_be.locale().get("metadata.code") == Some(Json::string("nl_BE")),
  )
}

///|
test "fallback chain" {
  let codes = @nl_be.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["nl_BE", "nl", "en", "base"])
}
