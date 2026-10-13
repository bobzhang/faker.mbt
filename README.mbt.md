# Faker for MoonBit

[![CI](https://github.com/bobzhang/faker.mbt/actions/workflows/ci.yml/badge.svg)](https://github.com/bobzhang/faker.mbt/actions/workflows/ci.yml)

A native MoonBit port of the Faker checkout recorded in
[scripts/upstream.json](scripts/upstream.json), with all 77 locale datasets,
MT19937 random generation, and corresponding entry points for all 271 upstream
generator functions. No JavaScript runtime, network connection, or third-party
MoonBit dependencies are needed to use the library.

## Quick start

Import `bobzhang/faker` in your `moon.pkg`:

```text
import { "bobzhang/faker" }
```

```mbt check
///|
test "seeded example" {
  let faker = @faker.Faker(seed=42)
  assert_eq(faker.person_full_name(), "Nikita Cormier")
  assert_eq(faker.uuid(), "0d9b0fd3-2248-4649-9245-7c3890921ffc")
  faker.seed(42)
  assert_eq(faker.person_full_name(), "Nikita Cormier")
}
```

Methods use snake_case. Category methods have a prefix, such as
`person_first_name`, `internet_email`, and `location_city`. Core number, string,
and helper methods use short names, such as `int`, `uuid`, and `array_element`.
[API.md](API.md) maps every upstream generator to its MoonBit entry point;
[pkg.generated.mbti](pkg.generated.mbti) lists the signatures.

```mbt check
///|
test "generating structured test data" {
  let faker = @faker.Faker(seed=123)
  let count = faker.int(min=3, max=8)
  let identifiers = @faker.multiple(_ => faker.uuid(), count~)
  assert_eq(identifiers.length(), count)
  assert_true(faker.internet_email().contains("@"))
  assert_true(@faker.luhn_valid(faker.finance_credit_card_number()))
  assert_eq(faker.finance_iban(country_code="GB").length(), 22)
}
```

## Locales

Each dataset is an independently importable package, using lowercase locale IDs:
`bobzhang/faker/locales/en`, `bobzhang/faker/locales/zh_cn`, `bobzhang/faker/locales/de_at`, etc.
The default constructor uses English and base. For another language, pass its
`locales()`: the locale followed by the fallbacks of upstream's prebuilt faker
for it (`fakerZH_CN` is `zh_CN`, `en`, `base`), in descending precedence:

```mbt nocheck
// Also import "bobzhang/faker/locales/zh_cn" in moon.pkg.

///|
let faker = @faker.Faker(seed=42, locales=@zh_cn.locales())

///|
let name = faker.person_full_name()
```

Each package also exports `locale()`, the dataset alone, for building a custom
chain such as `[@zh_cn.locale(), @ja.locale(), @base.locale()]`.

Fallback occurs per category entry, matching upstream: a defined
`person.first_name` object is used whole. Its missing nested keys do not fall
back to another locale. Explicit null disables an entry. Missing or inapplicable
data raises an error. `Locale::from_json` supports custom data; `@locale.merge`
combines locale entries without modifying the input category maps.

## Reproducibility and compatibility

The scalar/array seeds and 53-bit MT19937 sequence match Faker. A generator owns
its state unless you pass a shared randomizer. `Randomizer(precision32=true)`
provides the earlier 32-bit generator; `RandomSource` supports custom sources.
`uniform_distributor` and `exponential_distributor` work with `int` and `float`.
The committed fixtures compare outputs across five seeds, including the optional
arguments of each generator, and the integration suite compares 17 compound
generators in every language locale. CI regenerates all of them from the pinned
checkout and fails if the committed copies differ.

Intentional MoonBit adaptations:

- `Faker()` uses seed **5489**, rather than ambient randomness. Set a seed
  explicitly when test output is part of a contract.
- Dates are **Int64 Unix milliseconds**. Relative dates default to
  **2020-01-01T00:00:00Z**; use `set_default_ref_date` or a method's `ref_date`
  argument to change this. `date_iso` formats UTC timestamps. UUID v7 and ULID
  take explicit timestamps.
- `int` uses MoonBit's signed 32-bit bounds, defaulting to `0..2147483647`.
  `int64` covers JavaScript's safe integer range; `big_int` supports arbitrary
  precision. `float` accepts up to 15 fractional digits and rejects non-finite
  bounds. BigInt intentionally preserves upstream's decimal/modulo algorithm.
- On the native backend `sin` and `cos` come from the platform C library, so
  `location_nearby_gps_coordinate` with an `origin` can differ from the other
  backends, and from upstream, in the last digit.
- Invalid input raises checked `FakerError` variants. Empty randomizer seed
  arrays are a documented panic. Custom random sources must satisfy their trait
  contract. Enum reflection is replaced by explicit arrays of enum values.
- `multiple` passes the index to its callback. `unique_array` takes an array;
  `unique_array_with` takes a generator callback. Neither is overloaded.
- Variable counts/lengths are composed with `int` or `range_to_number`.
  Word filters use `min_length`, `max_length`, and `LengthStrategy`.
- Color generators return typed channel arrays; `color_rgb` returns hex.
  Use `color_rgb_channels`, `color_css`, and `color_binary` for other formats.
- `finance_amount` uses fixed decimal formatting; runtime-dependent
  `autoFormat`/Intl formatting is not included. Password character regex options
  are replaced by `from_characters`/`from_reg_exp` composition. `from_characters`
  takes Unicode characters from a string; use collection helpers to sample
  multi-character tokens.
- `fake` supports the generated no-argument method whitelist and dotted locale
  definitions. JSON arguments are supported for `number.int`, `string.numeric`,
  `helpers.arrayElement`, and `location.state`; arbitrary TypeScript overloads
  and expression reflection are not reproduced. Templates have a recursion
  limit of 32. `mustache` accepts explicit resolver callbacks.
- `from_reg_exp` implements Faker's regex-like subset, not a general regex
  engine. Quantifiers are bounded at one million characters. Map helpers use
  MoonBit insertion order. No JavaScript object/enum reflection is required.

These generators create test data. Passwords, mock JWT signatures, and generated
payment/cryptocurrency strings are not credentials or usable accounts.

## Development

```sh
moon check --target all --warn-list +unnecessary_annotation
moon test --target all
moon fmt
moon info
```

The `.repos/` source checkout is ignored. Generated datasets and test fixtures
are committed, so ordinary builds and tests work without it. With the pinned
checkout available, rebuild generated files using Node.js with TypeScript
stripping support and Python 3:

```sh
node scripts/generate-locales.mjs
node scripts/generate-transliteration.mjs
node scripts/generate-slugify.mjs
node scripts/generate-case-data.mjs
node scripts/generate-finance-data.mjs
python3 scripts/generate-data-methods.py
python3 scripts/api-coverage.py
python3 scripts/generate-template-dispatch.py
node scripts/generate-parity.mjs
node scripts/generate-locale-parity.mjs
moon fmt
moon info
```

Faker source/data attribution and its original MIT notices are retained in
[LICENSE](LICENSE). Generated Unicode tables use the JavaScript runtime's Unicode
version; regenerate them together when updating the port.
