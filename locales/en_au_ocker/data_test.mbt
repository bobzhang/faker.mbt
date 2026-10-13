///|
test "locale metadata parses" {
  assert_true(
    @en_au_ocker.locale().get("metadata.code") ==
    Some(Json::string("en_AU_ocker")),
  )
}
