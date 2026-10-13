///|
test "locale metadata parses" {
  assert_true(
    @en_au_ocker.locale().get("metadata.code") ==
    Some(Json::string("en_AU_ocker")),
  )
}

///|
test "fallback chain" {
  let codes = @en_au_ocker.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_AU_ocker", "en_AU", "en", "base"])
}
