///|
test "MT19937 reference scalar sequence" {
  let rng = @randomizer.Randomizer()
  let expected : Array[UInt32] = [
    3499211612, 581869302, 3890346734, 3586334585, 545404204, 4161255391, 3922919429,
    949333985, 2715962298, 1323567403,
  ]
  for x in expected {
    assert_eq(rng.next_u32(), x)
  }
}

///|
test "MT19937 reference array seed sequence" {
  let rng = @randomizer.Randomizer()
  rng.seed_array([0x123, 0x234, 0x345, 0x456])
  let expected : Array[UInt32] = [
    1067595299, 955945823, 477289528, 4107218783, 4228976476, 3344332714, 3355579695,
    227628506, 810200273, 2591290167,
  ]
  for x in expected {
    assert_eq(rng.next_u32(), x)
  }
}

///|
test "Faker 53 bit random sequence and reseed across twist boundaries" {
  let rng = @randomizer.Randomizer(seed=42)
  assert_eq(rng.next(), 0.3745401188473625)
  assert_eq(rng.next(), 0.9507143064099162)
  rng.seed(42)
  let values = Array::makei(2000, _ => rng.next())
  rng.seed(42)
  for x in values {
    assert_eq(rng.next(), x)
    assert_true(x >= 0 && x < 1)
  }
}
