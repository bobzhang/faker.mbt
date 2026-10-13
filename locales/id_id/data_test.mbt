///|
test "locale metadata parses" {
  assert_true(
    @id_id.locale().get("metadata.code") == Some(Json::string("id_ID")),
  )
}
