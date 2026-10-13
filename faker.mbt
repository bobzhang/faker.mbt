///|
pub using @locale {type Locale}

///|
pub using @randomizer {type Randomizer}

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
  randomizer : Randomizer
  locales : Array[Locale]
}

///|
/// Construct an English generator. The portable default seed is 5489.
/// Pass locales in descending precedence, including any desired fallbacks.
pub fn Faker::new(
  seed~ : UInt32 = 5489,
  locales~ : Array[Locale] = [@en.locale(), @base.locale()],
  randomizer? : Randomizer,
) -> Faker {
  {
    randomizer: randomizer.unwrap_or_else(() => Randomizer::new(seed~)),
    locales: locales.copy(),
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
  for locale in self.locales {
    if locale.get(path) is Some(value) {
      return value
    }
  }
  raise MissingDefinition(path)
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
