///|
test "template parser supports JSON arguments and preserves literal dollars" {
  let f = @faker.Faker::new()
  assert_eq(f.fake("${{number.int({\"min\":7,\"max\":7})}}"), "$7")
  assert_eq(f.fake("{{helpers.arrayElement([\"a\"])}}"), "a")
  assert_eq(
    @faker.mustache("{{x}} {{x}} {{y}}", { "x": () => "$&" }),
    "$& $& {{y}}",
  )
}

///|
test "cyclic templates raise and restore the generator recursion counter" {
  let f = @faker.Faker::new(locales=[
    @faker.Locale::from_json({ "custom": { "cycle": ["{{custom.cycle}}"] } }),
  ])
  for _ in 0..<2 {
    try f.fake("{{custom.cycle}}") catch {
      @faker.InvalidArgument(_) => ()
      err => raise err
    } noraise {
      _ => fail("expected recursion error")
    }
    assert_eq(f.fake("literal"), "literal")
  }
}
