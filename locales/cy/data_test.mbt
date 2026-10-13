///|
test "locale metadata parses" {
  assert_true(@cy.locale().get("metadata.code") == Some(Json::string("cy")))
}

///|
test "fallback chain" {
  let codes = @cy.locales().map(locale => locale.get("metadata.code").unwrap())
  json_inspect(codes, content=["cy", "en", "base"])
}
