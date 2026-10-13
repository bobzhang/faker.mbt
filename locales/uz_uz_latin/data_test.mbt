///|
test "locale metadata parses" {
  assert_true(
    @uz_uz_latin.locale().get("metadata.code") ==
    Some(Json::string("uz_UZ_latin")),
  )
}

///|
test "fallback chain" {
  let codes = @uz_uz_latin.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["uz_UZ_latin", "en", "base"])
}
