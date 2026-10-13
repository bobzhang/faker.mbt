///|
test "locale metadata parses" {
  assert_true(@vi.locale().get("metadata.code") == Some(Json::string("vi")))
}
