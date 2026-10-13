///|
test "locale metadata parses" {
  assert_true(
    @ro_md.locale().get("metadata.code") == Some(Json::string("ro_MD")),
  )
}
