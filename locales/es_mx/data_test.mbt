///|
test "locale metadata parses" {
  assert_true(
    @es_mx.locale().get("metadata.code") == Some(Json::string("es_MX")),
  )
}
