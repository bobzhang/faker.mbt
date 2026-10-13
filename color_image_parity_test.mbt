// Generated against the pinned Faker checkout by scripts/generate-parity.mjs.

///|
test "upstream parity seed 0" {
  let f = @faker.Faker(seed=0)
  f.seed(0)
  json_inspect(f.color_rgb(), content="#cfdb9e")
  f.seed(0)
  json_inspect(f.color_rgb_channels(include_alpha=true), content=[
    140, 183, 154, 0.55,
  ])
  f.seed(0)
  json_inspect(f.color_cmyk(), content=[0.55, 0.72, 0.6, 0.55])
  f.seed(0)
  json_inspect(f.color_hsl(), content=[198, 0.72, 0.6])
  f.seed(0)
  json_inspect(f.color_hwb(), content=[198, 0.72, 0.6])
  f.seed(0)
  json_inspect(f.color_lab(), content=[0.548814, 43.0379, 20.5527])
  f.seed(0)
  json_inspect(f.color_lch(), content=[0.548814, 164.5, 217])
  f.seed(0)
  json_inspect(f.color_by_css_color_space(), content=[0.5488, 0.7152, 0.6028])
  f.seed(0)
  json_inspect(
    @faker.color_css(f.color_hsl(include_alpha=true), model="hsla"),
    content="hsl(198deg 72% 60% / 0.55)",
  )
  f.seed(0)
  json_inspect(
    @faker.color_binary(f.color_lch()),
    content="00111111000011000111111100010011 01000011001001001000000000000000 11011001",
  )
  f.seed(0)
  json_inspect(
    f.image_avatar(),
    content="https://avatars.githubusercontent.com/u/71518937",
  )
  f.seed(0)
  json_inspect(
    f.image_url(),
    content="https://picsum.photos/seed/xqErTXnN/2195/2861",
  )
  f.seed(0)
  json_inspect(
    f.image_url_picsum_photos(),
    content="https://picsum.photos/seed/ErTXnNw/2195/2861?blur=5",
  )
  f.seed(0)
  json_inspect(
    f.image_data_uri(),
    content="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgYmFzZVByb2ZpbGU9ImZ1bGwiIHdpZHRoPSIyMTk1IiBoZWlnaHQ9IjI4NjEiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNkYjllOWQiLz48dGV4dCB4PSIxMDk3LjUiIHk9IjE0MzAuNSIgZm9udC1zaXplPSIyMCIgYWxpZ25tZW50LWJhc2VsaW5lPSJtaWRkbGUiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZpbGw9IndoaXRlIj4yMTk1eDI4NjE8L3RleHQ+PC9zdmc+",
  )
  f.seed(0)
  json_inspect(f.big_int(), content="765464893755900")
  f.seed(0)
  json_inspect(
    f.big_int(
      min=-100000000000000000000N,
      max=100000000000000000000N,
      multiple_of=13N,
    ),
    content="49510436188267011438",
  )
  f.seed(0)
  json_inspect(
    round_coordinate(f.location_nearby_gps_coordinate(origin=(33.0, -170.0))),
    content=[32.968881337, -170.098262283],
  )
  f.seed(0)
  json_inspect(
    f.finance_transaction_description(),
    content="payment at O'Hara Inc with a card ending in ****8937 for MGA 568.05 from account ***9000.",
  )
}

///|
test "upstream parity seed 1" {
  let f = @faker.Faker(seed=1)
  f.seed(1)
  json_inspect(f.color_rgb(), content="#9f0632")
  f.seed(1)
  json_inspect(f.color_rgb_channels(include_alpha=true), content=[
    106, 184, 0, 0.3,
  ])
  f.seed(1)
  json_inspect(f.color_cmyk(), content=[0.42, 0.72, 0, 0.3])
  f.seed(1)
  json_inspect(f.color_hsl(), content=[150, 0.72, 0])
  f.seed(1)
  json_inspect(f.color_hwb(), content=[150, 0.72, 0])
  f.seed(1)
  json_inspect(f.color_lab(), content=[0.417022, 44.0649, -99.9772])
  f.seed(1)
  json_inspect(f.color_lch(), content=[0.417022, 165.7, 0])
  f.seed(1)
  json_inspect(f.color_by_css_color_space(), content=[0.417, 0.7203, 0.0001])
  f.seed(1)
  json_inspect(
    @faker.color_css(f.color_hsl(include_alpha=true), model="hsla"),
    content="hsl(150deg 72% 0% / 0.3)",
  )
  f.seed(1)
  json_inspect(
    @faker.color_binary(f.color_lch()),
    content="00111110110101011000001111101000 01000011001001011011001100110011 00000000",
  )
  f.seed(1)
  json_inspect(
    f.image_avatar(),
    content="https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/0.jpg",
  )
  f.seed(1)
  json_inspect(
    f.image_url(),
    content="https://picsum.photos/seed/i95bl/1668/2881",
  )
  f.seed(1)
  json_inspect(
    f.image_url_picsum_photos(),
    content="https://picsum.photos/seed/5blox/1668/2881?grayscale&blur=3",
  )
  f.seed(1)
  json_inspect(
    f.image_data_uri(),
    content="data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20version%3D%221.1%22%20baseProfile%3D%22full%22%20width%3D%221668%22%20height%3D%222881%22%3E%3Crect%20width%3D%22100%25%22%20height%3D%22100%25%22%20fill%3D%22%23063247%22%2F%3E%3Ctext%20x%3D%22834%22%20y%3D%221440.5%22%20font-size%3D%2220%22%20alignment-baseline%3D%22middle%22%20text-anchor%3D%22middle%22%20fill%3D%22white%22%3E1668x2881%3C%2Ftext%3E%3C%2Fsvg%3E",
  )
  f.seed(1)
  json_inspect(f.big_int(), content="703101335462806")
  f.seed(1)
  json_inspect(
    f.big_int(
      min=-100000000000000000000N,
      max=100000000000000000000N,
      multiple_of=13N,
    ),
    content="-88596826389835161333",
  )
  f.seed(1)
  json_inspect(
    round_coordinate(f.location_nearby_gps_coordinate(origin=(33.0, -170.0))),
    content=[33.051702926, -170.090014265],
  )
  f.seed(1)
  json_inspect(
    f.finance_transaction_description(),
    content="You made a payment of AED 302.33 at Heathcote - Jerde using card ending in ****6280 from account ***6451.",
  )
}

///|
test "upstream parity seed 42" {
  let f = @faker.Faker(seed=42)
  f.seed(42)
  json_inspect(f.color_rgb(), content="#8ead33")
  f.seed(42)
  json_inspect(f.color_rgb_channels(include_alpha=true), content=[
    95, 243, 187, 0.6,
  ])
  f.seed(42)
  json_inspect(f.color_cmyk(), content=[0.37, 0.96, 0.73, 0.6])
  f.seed(42)
  json_inspect(f.color_hsl(), content=[135, 0.96, 0.73])
  f.seed(42)
  json_inspect(f.color_hwb(), content=[135, 0.96, 0.73])
  f.seed(42)
  json_inspect(f.color_lab(), content=[0.37454, 90.1429, 46.3988])
  f.seed(42)
  json_inspect(f.color_lch(), content=[0.37454, 218.7, 263.5])
  f.seed(42)
  json_inspect(f.color_by_css_color_space(), content=[0.3745, 0.9508, 0.732])
  f.seed(42)
  json_inspect(
    @faker.color_css(f.color_hsl(include_alpha=true), model="hsla"),
    content="hsl(135deg 96% 73% / 0.6)",
  )
  f.seed(42)
  json_inspect(
    @faker.color_binary(f.color_lch()),
    content="00111110101111111100001110110101 01000011010110101011001100110011 01000011100000111100000000000000",
  )
  f.seed(42)
  json_inspect(
    f.image_avatar(),
    content="https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/73.jpg",
  )
  f.seed(42)
  json_inspect(
    f.image_url(),
    content="https://picsum.photos/seed/B993RBH1Y/1498/3802",
  )
  f.seed(42)
  json_inspect(
    f.image_url_picsum_photos(),
    content="https://picsum.photos/seed/93RBH/1498/3802?blur=6",
  )
  f.seed(42)
  json_inspect(
    f.image_data_uri(),
    content="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgYmFzZVByb2ZpbGU9ImZ1bGwiIHdpZHRoPSIxNDk4IiBoZWlnaHQ9IjM4MDIiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNhZDMzMWQiLz48dGV4dCB4PSI3NDkiIHk9IjE5MDEiIGZvbnQtc2l6ZT0iMjAiIGFsaWdubWVudC1iYXNlbGluZT0ibWlkZGxlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmaWxsPSJ3aGl0ZSI+MTQ5OHgzODAyPC90ZXh0Pjwvc3ZnPg==",
  )
  f.seed(42)
  json_inspect(f.big_int(), content="975110867098211")
  f.seed(42)
  json_inspect(
    f.big_int(
      min=-100000000000000000000N,
      max=100000000000000000000N,
      multiple_of=13N,
    ),
    content="16764412722767476065",
  )
  f.seed(42)
  json_inspect(
    round_coordinate(f.location_nearby_gps_coordinate(origin=(33.0, -170.0))),
    content=[33.097161778, -170.096600932],
  )
  f.seed(42)
  json_inspect(
    f.finance_transaction_description(),
    content="You made a withdrawal of SBD 598.66 at Streich - Aufderhar using card ending in ****9821 from account ***1354.",
  )
}

///|
test "upstream parity seed 12345" {
  let f = @faker.Faker(seed=12345)
  f.seed(12345)
  json_inspect(f.color_rgb(), content="#e644cd")
  f.seed(12345)
  json_inspect(f.color_rgb_channels(include_alpha=true), content=[
    237, 80, 47, 0.2,
  ])
  f.seed(12345)
  json_inspect(f.color_cmyk(), content=[0.93, 0.31, 0.18, 0.2])
  f.seed(12345)
  json_inspect(f.color_hsl(), content=[335, 0.31, 0.18])
  f.seed(12345)
  json_inspect(f.color_hwb(), content=[335, 0.31, 0.18])
  f.seed(12345)
  json_inspect(f.color_lab(), content=[0.929617, -36.7249, -63.2163])
  f.seed(12345)
  json_inspect(f.color_lch(), content=[0.929617, 72.7, 66.2])
  f.seed(12345)
  json_inspect(f.color_by_css_color_space(), content=[0.9297, 0.3164, 0.1839])
  f.seed(12345)
  json_inspect(
    @faker.color_css(f.color_hsl(include_alpha=true), model="hsla"),
    content="hsl(335deg 31% 18% / 0.2)",
  )
  f.seed(12345)
  json_inspect(
    @faker.color_binary(f.color_lch()),
    content="00111111011011011111101101100001 01000010100100010110011001100110 01000010100001000110011001100110",
  )
  f.seed(12345)
  json_inspect(
    f.image_avatar(),
    content="https://avatars.githubusercontent.com/u/31637555",
  )
  f.seed(12345)
  json_inspect(
    f.image_url(),
    content="https://picsum.photos/seed/czAXEK/3718/1266",
  )
  f.seed(12345)
  json_inspect(
    f.image_url_picsum_photos(),
    content="https://picsum.photos/seed/AXEKEKX0/3718/1266?grayscale&blur=2",
  )
  f.seed(12345)
  json_inspect(
    f.image_data_uri(),
    content="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgYmFzZVByb2ZpbGU9ImZ1bGwiIHdpZHRoPSIzNzE4IiBoZWlnaHQ9IjEyNjYiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiM0NGNkZmUiLz48dGV4dCB4PSIxODU5IiB5PSI2MzMiIGZvbnQtc2l6ZT0iMjAiIGFsaWdubWVudC1iYXNlbGluZT0ibWlkZGxlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmaWxsPSJ3aGl0ZSI+MzcxOHgxMjY2PC90ZXh0Pjwvc3ZnPg==",
  )
  f.seed(12345)
  json_inspect(f.big_int(), content="312559676790126")
  f.seed(12345)
  json_inspect(
    f.big_int(
      min=-100000000000000000000N,
      max=100000000000000000000N,
      multiple_of=13N,
    ),
    content="-89367242017283504300",
  )
  f.seed(12345)
  json_inspect(
    round_coordinate(f.location_nearby_gps_coordinate(origin=(33.0, -170.0))),
    content=[32.980489308, -169.958795967],
  )
  f.seed(12345)
  json_inspect(
    f.finance_transaction_description(),
    content="invoice transaction at Mills - Rogahn using card ending with ****6790 for BOB 298.70 in account ***6889.",
  )
}

///|
test "upstream parity seed 4294967295" {
  let f = @faker.Faker(seed=4294967295)
  f.seed(4294967295)
  json_inspect(f.color_rgb(), content="#2ebb0f")
  f.seed(4294967295)
  json_inspect(f.color_rgb_channels(include_alpha=true), content=[
    24, 233, 201, 0.78,
  ])
  f.seed(4294967295)
  json_inspect(f.color_cmyk(), content=[0.09, 0.92, 0.79, 0.78])
  f.seed(4294967295)
  json_inspect(f.color_hsl(), content=[35, 0.92, 0.79])
  f.seed(4294967295)
  json_inspect(f.color_hwb(), content=[35, 0.92, 0.79])
  f.seed(4294967295)
  json_inspect(f.color_lab(), content=[0.097632, 82.4766, 57.8071])
  f.seed(4294967295)
  json_inspect(f.color_lch(), content=[0.097632, 209.9, 284.1])
  f.seed(4294967295)
  json_inspect(f.color_by_css_color_space(), content=[0.0976, 0.9124, 0.7891])
  f.seed(4294967295)
  json_inspect(
    @faker.color_css(f.color_hsl(include_alpha=true), model="hsla"),
    content="hsl(35deg 92% 79% / 0.78)",
  )
  f.seed(4294967295)
  json_inspect(
    @faker.color_binary(f.color_lch()),
    content="00111101110001111111001101001001 01000011010100011110011001100110 01000011100011100000110011001101",
  )
  f.seed(4294967295)
  json_inspect(
    f.image_avatar(),
    content="https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/78.jpg",
  )
  f.seed(4294967295)
  json_inspect(
    f.image_url(),
    content="https://picsum.photos/seed/M1YA9UyZp/391/3649",
  )
  f.seed(4294967295)
  json_inspect(
    f.image_url_picsum_photos(),
    content="https://picsum.photos/seed/YA9Uy/391/3649?blur=8",
  )
  f.seed(4294967295)
  json_inspect(
    f.image_data_uri(),
    content="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgYmFzZVByb2ZpbGU9ImZ1bGwiIHdpZHRoPSIzOTEiIGhlaWdodD0iMzY0OSI+PHJlY3Qgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0iI2JiMGZkMyIvPjx0ZXh0IHg9IjE5NS41IiB5PSIxODI0LjUiIGZvbnQtc2l6ZT0iMjAiIGFsaWdubWVudC1iYXNlbGluZT0ibWlkZGxlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmaWxsPSJ3aGl0ZSI+MzkxeDM2NDk8L3RleHQ+PC9zdmc+",
  )
  f.seed(4294967295)
  json_inspect(f.big_int(), content="977095195943198")
  f.seed(4294967295)
  json_inspect(
    f.big_int(
      min=-100000000000000000000N,
      max=100000000000000000000N,
      multiple_of=13N,
    ),
    content="27022375472615849586",
  )
  f.seed(4294967295)
  json_inspect(
    round_coordinate(f.location_nearby_gps_coordinate(origin=(33.0, -170.0))),
    content=[33.075694494, -169.892487296],
  )
  f.seed(4294967295)
  json_inspect(
    f.finance_transaction_description(),
    content="A withdrawal of SSP 780.01 occurred at Conroy - Wyman using a card ending in ****4319 for account ***8842.",
  )
}
