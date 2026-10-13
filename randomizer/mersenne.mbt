///|
/// MT19937 with the same scalar/array seeding and 53-bit output as Faker JS.
pub struct Randomizer {
  state : FixedArray[UInt32]
  mut index : Int32
}

///|
pub fn Randomizer::new(seed~ : UInt32 = 5489) -> Randomizer {
  let self = { state: FixedArray::make(624, 0), index: 624, }
  self.seed(seed)
  self
}

///|
pub fn Randomizer::seed(self : Randomizer, seed : UInt32) -> Unit {
  self.state[0] = seed
  for i in 1..<624 {
    let prev = self.state[i - 1]
    self.state[i] = 1812433253U * (prev ^ (prev >> 30)) +
      i.reinterpret_as_uint()
  }
  self.index = 624
}

///|
/// Seed with a nonempty sequence of 32-bit words.
/// Panics if the seed array is empty.
pub fn Randomizer::seed_array(
  self : Randomizer,
  seeds : ArrayView[UInt32],
) -> Unit {
  guard !seeds.is_empty() else { abort("seed array must not be empty") }
  self.seed(19650218)
  let mut i = 1
  let mut j = 0
  for _ in 0..<seeds.length().max(624) {
    let prev = self.state[i - 1]
    self.state[i] = (self.state[i] ^ ((prev ^ (prev >> 30)) * 1664525U)) +
      seeds[j] +
      j.reinterpret_as_uint()
    i += 1
    j += 1
    if i >= 624 {
      self.state[0] = self.state[623]
      i = 1
    }
    if j >= seeds.length() {
      j = 0
    }
  }
  for _ in 0..<623 {
    let prev = self.state[i - 1]
    self.state[i] = (self.state[i] ^ ((prev ^ (prev >> 30)) * 1566083941U)) -
      i.reinterpret_as_uint()
    i += 1
    if i >= 624 {
      self.state[0] = self.state[623]
      i = 1
    }
  }
  self.state[0] = 0x80000000
}

///|
fn Randomizer::twist(self : Randomizer) -> Unit {
  for i in 0..<624 {
    let y = (self.state[i] & 0x80000000U) |
      (self.state[(i + 1) % 624] & 0x7fffffffU)
    self.state[i] = self.state[(i + 397) % 624] ^
      (y >> 1) ^
      (if (y & 1U) == 0 { 0U } else { 0x9908b0dfU })
  }
  self.index = 0
}

///|
pub fn Randomizer::next_u32(self : Randomizer) -> UInt32 {
  if self.index == 624 {
    self.twist()
  }
  let mut y = self.state[self.index]
  self.index += 1
  y = y ^ (y >> 11)
  y = y ^ ((y << 7) & 0x9d2c5680U)
  y = y ^ ((y << 15) & 0xefc60000U)
  y ^ (y >> 18)
}

///|
/// A uniformly distributed value in [0, 1), using 32 random bits.
pub fn Randomizer::next_f32(self : Randomizer) -> Double {
  self.next_u32().to_double() / 4294967296.0
}

///|
/// A uniformly distributed value in [0, 1), using 53 random bits.
pub fn Randomizer::next(self : Randomizer) -> Double {
  let high = self.next_u32() >> 5
  let low = self.next_u32() >> 6
  (high.to_double() * 67108864.0 + low.to_double()) / 9007199254740992.0
}
