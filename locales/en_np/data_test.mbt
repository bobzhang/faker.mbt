///|
test "locale metadata parses" {
  assert_true(
    @en_np.locale().get("metadata.code") == Some(Json::string("en_NP")),
  )
}

///|
test "fallback chain" {
  let codes = @en_np.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["en_NP", "en", "base"])
}
