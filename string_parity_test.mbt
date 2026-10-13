// Generated against the pinned Faker checkout by scripts/generate-parity.mjs.

///|
test "upstream parity seed 0" {
  let f = @faker.Faker(seed=0)
  f.seed(0)
  json_inspect(f.alpha(length=20), content="CLFCwHwUYtPBDWdebROT")
  f.seed(0)
  json_inspect(
    f.alpha(length=20, casing=Upper, exclude="ABC"),
    content="PTQPMRNXZLVPQYEFDWUX",
  )
  f.seed(0)
  json_inspect(f.alphanumeric(length=20), content="yIBxqErTXnNwzV451PMR")
  f.seed(0)
  json_inspect(
    f.numeric(length=20, allow_leading_zeros=false),
    content="57654648937559000878",
  )
  f.seed(0)
  json_inspect(f.hexadecimal(length=20), content="0xcfdb9e9DF8BbcE110CBD")
  f.seed(0)
  json_inspect(f.binary(length=20), content="0b11110101101111000111")
  f.seed(0)
  json_inspect(f.octal(length=20), content="0o45443537736447000666")
  f.seed(0)
  json_inspect(f.symbol(length=20), content="<[><.?/{}-^;=|##!_]`")
  f.seed(0)
  json_inspect(f.string_sample(length=20), content="TcYSH]IszDjRUw')\"niq")
  f.seed(0)
  json_inspect(f.nanoid(), content="IxETnwV5PR-MDWpMzCCGr")
  f.seed(0)
  json_inspect(f.uuid(), content="8b986a7e-f6c8-49e1-910d-cdfc7c1a2f86")
  f.seed(0)
  json_inspect(
    f.uuid_v7(1577836800000L),
    content="016f5e66-e800-78b9-b86a-7ef6c89e110d",
  )
  f.seed(0)
  json_inspect(f.ulid(1577836800000L), content="01DXF6DT00HPKHDMEWYCSGJX22")
}

///|
test "upstream parity seed 1" {
  let f = @faker.Faker(seed=1)
  f.seed(1)
  json_inspect(f.alpha(length=20), content="vLaphejruCvJkTbIvDhk")
  f.seed(1)
  json_inspect(
    f.alpha(length=20, casing=Upper, exclude="ABC"),
    content="MTDJGFHKMPMSHXDSMPGH",
  )
  f.seed(1)
  json_inspect(f.alphanumeric(length=20), content="pI0i95bloxpGcS1Fpy8c")
  f.seed(1)
  json_inspect(
    f.numeric(length=20, allow_leading_zeros=false),
    content="47031013354628064511",
  )
  f.seed(1)
  json_inspect(f.hexadecimal(length=20), content="0x9f0632478b9f4D0e9c34")
  f.seed(1)
  json_inspect(f.binary(length=20), content="0b01000000010101010100")
  f.seed(1)
  json_inspect(f.octal(length=20), content="0o35021012343517053411")
  f.seed(1)
  json_inspect(f.symbol(length=20), content=".\\!*%#&,-<.@'{!@.<%'")
  f.seed(1)
  json_inspect(f.string_sample(length=20), content="Gc!=.)2AESG`4r#_GT.3")
  f.seed(1)
  json_inspect(f.nanoid(), content="Ii5lxGSFycYGT2SqxjPK-")
  f.seed(1)
  json_inspect(f.uuid(), content="6b042125-686a-43e0-8a68-23cf5bee102e")
  f.seed(1)
  json_inspect(
    f.uuid_v7(1577836800000L),
    content="016f5e66-e800-76b0-8421-25686a3e0a68",
  )
  f.seed(1)
  json_inspect(f.ulid(1577836800000L), content="01DXF6DT00DQ09425BCHDN6W0N")
}

///|
test "upstream parity seed 42" {
  let f = @faker.Faker(seed=42)
  f.seed(42)
  json_inspect(f.alpha(length=20), content="tXMFiidTFKbYRljjpBwp")
  f.seed(42)
  json_inspect(
    f.alpha(length=20, casing=Upper, exclude="ABC"),
    content="LYTQGGEWQTDZWHHHJPMJ",
  )
  f.seed(42)
  json_inspect(f.alphanumeric(length=20), content="nWJB993RBH1YPdbbiwqi")
  f.seed(42)
  json_inspect(
    f.numeric(length=20, allow_leading_zeros=false),
    content="49751108670982113542",
  )
  f.seed(42)
  json_inspect(f.hexadecimal(length=20), content="0x8EAd331Ddf0FC4446b96")
  f.seed(42)
  json_inspect(f.binary(length=20), content="0b01110001110110000100")
  f.seed(42)
  json_inspect(f.octal(length=20), content="0o27541106450761112432")
  f.seed(42)
  json_inspect(f.symbol(length=20), content=",}\\>%%\"`>[!~_'&&*;.*")
  f.seed(42)
  json_inspect(f.string_sample(length=20), content="CyeX//&qXb\"{n412=QI<")
  f.seed(42)
  json_inspect(f.nanoid(), content="WB9RHYdbwi8mMv2aWO6ru")
  f.seed(42)
  json_inspect(f.uuid(), content="5fb9220d-9b0f-4d32-a248-6492457c3890")
  f.seed(42)
  json_inspect(
    f.uuid_v7(1577836800000L),
    content="016f5e66-e800-75fb-9922-0d9b0fd32248",
  )
  f.seed(42)
  json_inspect(f.ulid(1577836800000L), content="01DXF6DT00BYQK441VKP0ZT655")
}

///|
test "upstream parity seed 12345" {
  let f = @faker.Faker(seed=12345)
  f.seed(12345)
  json_inspect(f.alpha(length=20), content="WqjkDEYHMHMXafpIQTYL")
  f.seed(12345)
  json_inspect(
    f.alpha(length=20, casing=Upper, exclude="ABC"),
    content="YKHHQQZSUSUZDFJSVXZT",
  )
  f.seed(12345)
  json_inspect(f.alphanumeric(length=20), content="VjbczAXEKEKX06iEOSXI")
  f.seed(12345)
  json_inspect(
    f.numeric(length=20, allow_leading_zeros=false),
    content="93125596767901268897",
  )
  f.seed(12345)
  json_inspect(f.hexadecimal(length=20), content="0xE644cdFeAeAF026eBDFf")
  f.seed(12345)
  json_inspect(f.binary(length=20), content="0b10001111111100011111")
  f.seed(12345)
  json_inspect(f.octal(length=20), content="0o72114475555700256675")
  f.seed(12345)
  json_inspect(f.symbol(length=20), content="|+&'=>}?\\?\\}!$*@^`}\\")
  f.seed(12345)
  json_inspect(f.string_sample(length=20), content="w>24UXz]f]fz!*<^lrzd")
  f.seed(12345)
  json_inspect(f.nanoid(), content="jcAEEX6ESIIkJ-aN1w3Jv")
  f.seed(12345)
  json_inspect(f.uuid(), content="e52399fa-babf-4014-8acd-fbab757bfac2")
  f.seed(12345)
  json_inspect(
    f.uuid_v7(1577836800000L),
    content="016f5e66-e800-7e52-b399-fababf014acd",
  )
  f.seed(12345)
  json_inspect(f.ulid(1577836800000L), content="01DXF6DT00XA56JKYMQMQY039N")
}

///|
test "upstream parity seed 4294967295" {
  let f = @faker.Faker(seed=4294967295)
  f.seed(4294967295)
  json_inspect(f.alpha(length=20), content="fVPOaYEhVCZvqjWQUzkZ")
  f.seed(4294967295)
  json_inspect(
    f.alpha(length=20, casing=Upper, exclude="ABC"),
    content="FXVUDZQGXPZMKHYVXOHZ",
  )
  f.seed(4294967295)
  json_inspect(f.alphanumeric(length=20), content="6UMM1YA9UyZpkbVPTucZ")
  f.seed(4294967295)
  json_inspect(
    f.numeric(length=20, allow_leading_zeros=false),
    content="19770951959431988429",
  )
  f.seed(4294967295)
  json_inspect(f.hexadecimal(length=20), content="0x2EBB0Fd3EcF973ECDa4F")
  f.seed(4294967295)
  json_inspect(f.binary(length=20), content="0b01110110111000111001")
  f.seed(4294967295)
  json_inspect(f.octal(length=20), content="0o07660741747321767317")
  f.seed(4294967295)
  json_inspect(f.symbol(length=20), content="$|^]!~=%|<~.+&|_{:'~")
  f.seed(4294967295)
  json_inspect(f.string_sample(length=20), content="*uji\"{X.uT|G?1wmsN4|")
  f.seed(4294967295)
  json_inspect(f.nanoid(), content="UMY9y_bPuZCzBSrtA2Dbu")
  f.seed(4294967295)
  json_inspect(f.uuid(), content="1ecc0f92-e8f6-452e-bde7-3f39c9098e17")
  f.seed(4294967295)
  json_inspect(
    f.uuid_v7(1577836800000L),
    content="016f5e66-e800-71ec-8c0f-92e8f652ede7",
  )
  f.seed(4294967295)
  json_inspect(f.ulid(1577836800000L), content="01DXF6DT003XSR0ZJ4XHZDA5XT")
}
