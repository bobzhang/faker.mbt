///|
/// Custom random sources must produce values in [0, 1) and support reseeding.
pub(open) trait RandomSource {
  fn next(Self) -> Double
  fn seed(Self, UInt32) -> Unit
  fn seed_array(Self, ArrayView[UInt32]) -> Unit
}

///|
pub impl RandomSource for Randomizer with fn next(self) {
  self.next()
}

///|
pub impl RandomSource for Randomizer with fn seed(self, seed) {
  self.seed(seed)
}

///|
pub impl RandomSource for Randomizer with fn seed_array(self, seeds) {
  self.seed_array(seeds)
}
