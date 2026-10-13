///|
test "locale metadata parses" {
  assert_true(
    @ku_kmr_latin.locale().get("metadata.code") ==
    Some(Json::string("ku_kmr_latin")),
  )
}
