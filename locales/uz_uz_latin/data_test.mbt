///|
test "locale metadata parses" {
  assert_true(
    @uz_uz_latin.locale().get("metadata.code") ==
    Some(Json::string("uz_UZ_latin")),
  )
}
