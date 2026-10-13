///|
struct ConstantRandomizer {}

///|
impl @faker.RandomSource for ConstantRandomizer with fn next(_self) {
  0.25
}

///|
impl @faker.RandomSource for ConstantRandomizer with fn seed(_self, _seed) {
  ()
}

///|
impl @faker.RandomSource for ConstantRandomizer with fn seed_array(
  _self,
  _seeds,
) {
  ()
}

///|
test "custom randomizer and numeric distributors" {
  let f = @faker.Faker(randomizer=ConstantRandomizer::{ })
  assert_eq(f.int(min=0, max=99), 25)
  assert_eq(f.float(), 0.25)
  assert_eq(f.int(min=5, max=10, distributor=_ => 0), 5)
  let uniform = @faker.exponential_distributor(base=1)
  assert_eq(f.float(distributor=uniform), 0.25)
  let exponential = @faker.exponential_distributor(base=16)
  assert_true(f.float(distributor=exponential).is_close(1.0 / 15))
  try f.int(distributor=_ => 1) catch {
    @faker.InvalidArgument(_) => ()
    err => raise err
  } noraise {
    _ => fail("must reject out of range distributor result")
  }
}

///|
test "32-bit randomizer is available to Faker" {
  let rng = @faker.Randomizer(seed=42, precision32=true)
  let f = @faker.Faker(randomizer=rng)
  assert_eq(f.random(), 1608637542.0 / 4294967296.0)
  f.seed(42)
  assert_eq(f.random(), 1608637542.0 / 4294967296.0)
}
