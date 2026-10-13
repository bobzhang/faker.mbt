///|
test "locale metadata parses" {
  assert_true(
    @es_mx.locale().get("metadata.code") == Some(Json::string("es_MX")),
  )
}

///|
test "fallback chain" {
  let codes = @es_mx.locales().map(locale => {
    locale.get("metadata.code").unwrap()
  })
  json_inspect(codes, content=["es_MX", "es", "en", "base"])
}
