///|
pub using @locale {type Locale}

///|
pub using @randomizer {type Randomizer, trait RandomSource}

///|
pub suberror FakerError {
  InvalidArgument(String)
  MissingDefinition(String)
  InvalidDefinition(String)
}

///|
/// Stateful fake data generator. Instances own their random sequence unless a
/// shared randomizer is supplied. Locale definitions are checked in order.
pub struct Faker {
  randomizer : &RandomSource
  locales : Array[Locale]
  mut template_depth : Int32
  mut ref_date : Int64
}

///|
/// Construct an English generator. The portable default seed is 5489.
/// Pass locales in descending precedence, including any desired fallbacks.
pub fn Faker::Faker(
  seed~ : UInt32 = 5489,
  locales~ : Array[Locale] = [@en.locale(), @base.locale()],
  randomizer? : &RandomSource,
) -> Faker {
  {
    randomizer: randomizer.unwrap_or_else(() => Randomizer(seed~)),
    locales: locales.copy(),
    template_depth: 0,
    ref_date: 1577836800000L,
  }
}

///|
pub fn Faker::seed(self : Faker, seed : UInt32) -> Unit {
  self.randomizer.seed(seed)
}

///|
pub fn Faker::seed_array(self : Faker, seeds : ArrayView[UInt32]) -> Unit {
  self.randomizer.seed_array(seeds)
}

///|
pub fn Faker::random(self : Faker) -> Double {
  self.randomizer.next()
}

///|
pub fn Faker::definition(self : Faker, path : String) -> Json raise {
  self
  .optional_definition(path)
  .unwrap_or_else(() => raise MissingDefinition(path))
}

///|
fn Faker::strings(self : Faker, path : String) -> Array[String] raise {
  guard self.definition(path) is Array(values) else {
    raise InvalidDefinition(path)
  }
  values.map(value => {
    match value {
      String(s) => s
      _ => raise InvalidDefinition(path)
    }
  })
}

///|
/// Sample any upstream string-array definition by its dotted path.
pub fn Faker::sample(self : Faker, path : String) -> String raise {
  self.array_element(self.strings(path))
}

///|
fn Faker::sample_json(self : Faker, path : String) -> Json raise {
  guard self.definition(path) is Array(values) else {
    raise InvalidDefinition(path)
  }
  self.array_element(values)
}

///|
fn json_string(value : Json) -> String raise {
  match value {
    String(s) => s
    _ => raise InvalidDefinition("expected string")
  }
}

///|
fn json_field(value : Json, key : String) -> Json raise {
  match value {
    Object(fields) =>
      fields.get(key).unwrap_or_else(() => raise InvalidDefinition(key))
    _ => raise InvalidDefinition(key)
  }
}

///|
fn json_int(value : Json) -> Int32 raise {
  match value {
    Number(n, ..) => n.to_int()
    _ => raise InvalidDefinition("expected number")
  }
}
