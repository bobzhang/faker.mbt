// Generated against the pinned Faker checkout by scripts/generate-parity.mjs.

///|
test "upstream parity seed 0" {
  let f = @faker.Faker::new(seed=0)
  f.seed(0)
  json_inspect(f.int(min=-100, max=100), content=10)
  f.seed(0)
  json_inspect(f.int(min=-2147483648, max=2147483647), content=209652402)
  f.seed(0)
  json_inspect(f.int(min=-100, max=100, multiple_of=7), content=7)
  f.seed(0)
  json_inspect(f.float(min=-100, max=100), content=9.762700785464943)
  f.seed(0)
  json_inspect(f.float(min=-100, max=100, fraction_digits=2), content=9.76)
  f.seed(0)
  json_inspect(f.boolean(), content=false)
  f.seed(0)
  json_inspect(f.array_element(["a", "b", "c"]), content="b")
  f.seed(0)
  json_inspect(f.shuffle([1, 2, 3, 4, 5]), content=[1, 4, 2, 5, 3])
  f.seed(0)
  json_inspect(f.array_elements([1, 2, 3, 4, 5], count=3), content=[2, 5, 3])
  f.seed(0)
  json_inspect(
    f.weighted_array_element([(1.0, "a"), (2.0, "b"), (3.0, "c")]),
    content="c",
  )
  f.seed(0)
  json_inspect(f.replace_symbols("##??**"), content="57POQX")
  f.seed(0)
  json_inspect(f.roman_numeral(), content="MMCXCV")
}

///|
test "upstream parity seed 1" {
  let f = @faker.Faker::new(seed=1)
  f.seed(1)
  json_inspect(f.int(min=-100, max=100), content=-17)
  f.seed(1)
  json_inspect(f.int(min=-2147483648, max=2147483647), content=-356387777)
  f.seed(1)
  json_inspect(f.int(min=-100, max=100, multiple_of=7), content=-14)
  f.seed(1)
  json_inspect(f.float(min=-100, max=100), content=-16.595599059485195)
  f.seed(1)
  json_inspect(f.float(min=-100, max=100, fraction_digits=2), content=-16.6)
  f.seed(1)
  json_inspect(f.boolean(), content=true)
  f.seed(1)
  json_inspect(f.array_element(["a", "b", "c"]), content="b")
  f.seed(1)
  json_inspect(f.shuffle([1, 2, 3, 4, 5]), content=[2, 4, 1, 5, 3])
  f.seed(1)
  json_inspect(f.array_elements([1, 2, 3, 4, 5], count=3), content=[1, 5, 3])
  f.seed(1)
  json_inspect(
    f.weighted_array_element([(1.0, "a"), (2.0, "b"), (3.0, "c")]),
    content="b",
  )
  f.seed(1)
  json_inspect(f.replace_symbols("##??**"), content="47AHCI")
  f.seed(1)
  json_inspect(f.roman_numeral(), content="MDCLXVIII")
}

///|
test "upstream parity seed 42" {
  let f = @faker.Faker::new(seed=42)
  f.seed(42)
  json_inspect(f.int(min=-100, max=100), content=-25)
  f.seed(42)
  json_inspect(f.int(min=-2147483648, max=2147483647), content=-538846087)
  f.seed(42)
  json_inspect(f.int(min=-100, max=100, multiple_of=7), content=-28)
  f.seed(42)
  json_inspect(f.float(min=-100, max=100), content=-25.091976230527507)
  f.seed(42)
  json_inspect(f.float(min=-100, max=100, fraction_digits=2), content=-25.09)
  f.seed(42)
  json_inspect(f.boolean(), content=true)
  f.seed(42)
  json_inspect(f.array_element(["a", "b", "c"]), content="b")
  f.seed(42)
  json_inspect(f.shuffle([1, 2, 3, 4, 5]), content=[1, 5, 3, 4, 2])
  f.seed(42)
  json_inspect(f.array_elements([1, 2, 3, 4, 5], count=3), content=[3, 4, 2])
  f.seed(42)
  json_inspect(
    f.weighted_array_element([(1.0, "a"), (2.0, "b"), (3.0, "c")]),
    content="b",
  )
  f.seed(42)
  json_inspect(f.replace_symbols("##??**"), content="39TPEW")
  f.seed(42)
  json_inspect(f.roman_numeral(), content="MCDXCVIII")
}

///|
test "upstream parity seed 12345" {
  let f = @faker.Faker::new(seed=12345)
  f.seed(12345)
  json_inspect(f.int(min=-100, max=100), content=86)
  f.seed(12345)
  json_inspect(f.int(min=-2147483648, max=2147483647), content=1845187068)
  f.seed(12345)
  json_inspect(f.int(min=-100, max=100, multiple_of=7), content=84)
  f.seed(12345)
  json_inspect(f.float(min=-100, max=100), content=85.92321856342957)
  f.seed(12345)
  json_inspect(f.float(min=-100, max=100, fraction_digits=2), content=85.93)
  f.seed(12345)
  json_inspect(f.boolean(), content=false)
  f.seed(12345)
  json_inspect(f.array_element(["a", "b", "c"]), content="c")
  f.seed(12345)
  json_inspect(f.shuffle([1, 2, 3, 4, 5]), content=[4, 3, 1, 2, 5])
  f.seed(12345)
  json_inspect(f.array_elements([1, 2, 3, 4, 5], count=3), content=[1, 2, 5])
  f.seed(12345)
  json_inspect(
    f.weighted_array_element([(1.0, "a"), (2.0, "b"), (3.0, "c")]),
    content="c",
  )
  f.seed(12345)
  json_inspect(f.replace_symbols("##??**"), content="93EF56")
  f.seed(12345)
  json_inspect(f.roman_numeral(), content="MMMDCCXVIII")
}

///|
test "upstream parity seed 4294967295" {
  let f = @faker.Faker::new(seed=4294967295)
  f.seed(4294967295)
  json_inspect(f.int(min=-100, max=100), content=-81)
  f.seed(4294967295)
  json_inspect(f.int(min=-2147483648, max=2147483647), content=-1728157277)
  f.seed(4294967295)
  json_inspect(f.int(min=-100, max=100, multiple_of=7), content=-84)
  f.seed(4294967295)
  json_inspect(f.float(min=-100, max=100), content=-80.47359420119724)
  f.seed(4294967295)
  json_inspect(f.float(min=-100, max=100, fraction_digits=2), content=-80.48)
  f.seed(4294967295)
  json_inspect(f.boolean(), content=true)
  f.seed(4294967295)
  json_inspect(f.array_element(["a", "b", "c"]), content="a")
  f.seed(4294967295)
  json_inspect(f.shuffle([1, 2, 3, 4, 5]), content=[5, 2, 3, 4, 1])
  f.seed(4294967295)
  json_inspect(f.array_elements([1, 2, 3, 4, 5], count=3), content=[3, 4, 1])
  f.seed(4294967295)
  json_inspect(
    f.weighted_array_element([(1.0, "a"), (2.0, "b"), (3.0, "c")]),
    content="a",
  )
  f.seed(4294967295)
  json_inspect(f.replace_symbols("##??**"), content="09UUZ1")
  f.seed(4294967295)
  json_inspect(f.roman_numeral(), content="CCCXCI")
}
