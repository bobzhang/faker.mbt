///|
pub fn uniform_distributor() -> (Randomizer) -> Double {
  rng => rng.next()
}

///|
pub fn exponential_distributor(
  base? : Double,
  bias~ : Double = -1,
) -> ((Randomizer) -> Double) raise {
  let base = base.unwrap_or_else(() => {
    if bias <= 0 {
      -bias + 1
    } else {
      1.0 / (bias + 1)
    }
  })
  guard base > 0 && !base.is_inf() else {
    raise InvalidArgument("distribution base must be finite and positive")
  }
  if base == 1 {
    return uniform_distributor()
  }
  rng => (@math.pow(base, rng.next()) - 1) / (base - 1)
}

///|
fn Faker::distributed(
  self : Faker,
  distributor : ((Randomizer) -> Double)?,
) -> Double raise {
  let value = match distributor {
    Some(f) => f(self.randomizer)
    None => self.random()
  }
  guard value >= 0 && value < 1 else {
    raise InvalidArgument("distributor must return a value in [0, 1)")
  }
  value
}
