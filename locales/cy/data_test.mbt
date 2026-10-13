///|
test "locale metadata parses" {
  assert_true(@cy.locale().get("metadata.code") == Some(Json::string("cy")))
}
