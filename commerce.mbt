///|
pub fn Faker::commerce_price(
  self : Faker,
  min~ : Double = 1,
  max~ : Double = 1000,
  decimals~ : Int32 = 2,
  symbol~ : String = "",
) -> String raise {
  if min < 0 || max < 0 {
    return symbol + "0"
  }
  if min == max {
    return symbol + fixed_decimal(min, decimals)
  }
  let value = self.float(min~, max~, fraction_digits=decimals)
  if decimals == 0 {
    return symbol + fixed_decimal(value, decimals)
  }
  let old = value * @math.pow(10, decimals.to_double()) % 10
  let digit = self.weighted_array_element([
    (5.0, 9),
    (3.0, 5),
    (1.0, 0),
    (1.0, self.int(max=9)),
  ])
  let fraction = @math.pow(0.1, decimals.to_double())
  let combined = value - old * fraction + digit.to_double() * fraction
  symbol +
  fixed_decimal(
    if combined >= min && combined <= max {
      combined
    } else {
      value
    },
    decimals,
  )
}
