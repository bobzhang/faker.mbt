///|
test "locale metadata parses" {
  assert_true(
    @pt_br.locale().get("metadata.code") == Some(Json::string("pt_BR")),
  )
}
