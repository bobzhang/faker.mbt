///|
test "locale metadata parses" {
  assert_true(
    @pt_br.locale().get("metadata.code") == Some(Json::string("pt_BR")),
  )
}

///|
test "fallback chain" {
  let codes = @pt_br.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["pt_BR", "en", "base"])
}
