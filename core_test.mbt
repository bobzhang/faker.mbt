///|
test "degenerate ranges and singleton arrays do not advance the sequence" {
  let f = @faker.Faker::new(seed=42)
  assert_eq(f.int(min=-4, max=-4), -4)
  assert_eq(f.array_element(["only"]), "only")
  assert_eq(f.random(), 0.3745401188473625)
}

///|
test "invalid generation parameters raise errors" {
  let f = @faker.Faker::new()
  let operations : Array[() -> Unit raise] = [
    () => ignore(f.int(min=2, max=1)),
    () => ignore(f.int(multiple_of=0)),
    () => ignore(f.int(min=1, max=2, multiple_of=3)),
    () => ignore(f.float(min=2, max=1)),
    () => ignore(f.float(multiple_of=0)),
    () => ignore(f.float(fraction_digits=-1)),
    () => ignore(f.float(fraction_digits=1, multiple_of=1)),
    () => ignore(f.boolean(probability=2)),
    () => ignore(f.array_element(([] : Array[Int32]))),
    () => ignore(f.weighted_array_element([(0.0, 1)])),
  ]
  for operation in operations {
    try operation() catch {
      @faker.InvalidArgument(_) | @faker.MissingDefinition(_) => ()
      err => raise err
    } noraise {
      _ => fail("expected FakerError")
    }
  }
}

///|
test "locale fallback is per property and explicit null blocks fallback" {
  let first = @faker.Locale::from_json({
    "person": { "first_name": { "female": ["A"] }, "suffix": null },
  })
  let second = @faker.Locale::from_json({
    "person": { "first_name": { "male": ["B"] }, "suffix": ["Jr."] },
  })
  let f = @faker.Faker::new(locales=[first, second])
  assert_eq(f.sample("person.first_name.female"), "A")
  assert_eq(f.sample("person.first_name.male"), "B")
  json_inspect(f.definition("person.suffix"), content=null)
  try f.sample("missing.path") catch {
    @faker.InvalidArgument(_) | @faker.MissingDefinition(_) => ()
    err => raise err
  } noraise {
    _ => fail("expected missing definition")
  }
}

///|
test "instances isolate state unless a randomizer is shared" {
  let a = @faker.Faker::new(seed=42)
  let b = @faker.Faker::new(seed=42)
  for _ in 0..<100 {
    assert_eq(a.random(), b.random())
  }
  let rng = @faker.Randomizer::new(seed=42)
  let c = @faker.Faker::new(randomizer=rng)
  let d = @faker.Faker::new(randomizer=rng)
  assert_eq(c.random(), 0.3745401188473625)
  assert_eq(d.random(), 0.9507143064099162)
}
