///|
test "locale metadata parses" {
  assert_true(
    @ro_md.locale().get("metadata.code") == Some(Json::string("ro_MD")),
  )
}

///|
test "fallback chain" {
  let codes = @ro_md.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["ro_MD", "ro", "en", "base"])
}
