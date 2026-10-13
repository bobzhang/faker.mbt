///|
test "locale metadata parses" {
  assert_true(
    @id_id.locale().get("metadata.code") == Some(Json::string("id_ID")),
  )
}

///|
test "fallback chain" {
  let codes = @id_id.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["id_ID", "en", "base"])
}
