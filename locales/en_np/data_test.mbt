///|
test "locale metadata parses" {
  assert_true(
    @en_np.locale().get("metadata.code") == Some(Json::string("en_NP")),
  )
}
