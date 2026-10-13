///|
test "locale metadata parses" {
  assert_true(
    @nb_no.locale().get("metadata.code") == Some(Json::string("nb_NO")),
  )
}
