// Generated against the pinned Faker checkout by scripts/generate-parity.mjs.

///|
test "upstream parity seed 0" {
  let f = @faker.Faker(seed=0)
  f.seed(0)
  json_inspect(f.finance_account_name(), content="Investment Account")
  f.seed(0)
  json_inspect(f.finance_account_number(), content="57654648")
  f.seed(0)
  json_inspect(f.finance_amount(), content="548.81")
  f.seed(0)
  json_inspect(f.finance_bic(), content="SPOLNEFW")
  f.seed(0)
  json_inspect(
    f.finance_bitcoin_address(),
    content="bc1qmkfngwyetjlx330usvztgs4n5yjf9sgl0mmmyp",
  )
  f.seed(0)
  json_inspect(f.finance_credit_card_cvv(), content="576")
  f.seed(0)
  json_inspect(f.finance_credit_card_issuer(), content="jcb")
  f.seed(0)
  json_inspect(f.finance_credit_card_number(), content="3565-4648-9375-5909")
  f.seed(0)
  json_inspect(f.finance_currency_code(), content="MNT")
  f.seed(0)
  json_inspect(f.finance_currency_name(), content="Tugrik")
  f.seed(0)
  json_inspect(f.finance_currency_numeric_code(), content="496")
  f.seed(0)
  json_inspect(f.finance_currency_symbol(), content="₨")
  f.seed(0)
  json_inspect(
    f.finance_ethereum_address(),
    content="0xcfdb9e9df8bbce110cbdfbab2e3eb95bac0dddef",
  )
  f.seed(0)
  json_inspect(f.finance_iban(), content="LB466464Z75B0UZ411N240693662")
  f.seed(0)
  json_inspect(
    f.finance_litecoin_address(),
    content="3AxqDrTXoMwyV562QMSYNsM7D9Wwqg",
  )
  f.seed(0)
  json_inspect(f.finance_pin(), content="5765")
  f.seed(0)
  json_inspect(f.finance_routing_number(), content="081276549")
  f.seed(0)
  json_inspect(f.finance_vat_number(), content="IE6546489IW")
  f.seed(0)
  json_inspect(
    f.finance_iban(country_code="GB", formatted=true),
    content="GB50 OSPO 6835 5900 1794 71",
  )
  f.seed(0)
  json_inspect(f.commerce_price(), content="549.25")
  f.seed(0)
  json_inspect(f.commerce_isbn(), content="978-1-76546-489-4")
  f.seed(0)
  json_inspect(f.commerce_isbn(variant=10), content="1-76546-489-7")
  f.seed(0)
  json_inspect(f.commerce_upc(), content="576546489376")
  f.seed(0)
  json_inspect(f.vehicle_vin(), content="JPKHDMEW9CVH59000")
  f.seed(0)
  json_inspect(f.vehicle_vrm(), content="OS65LQL")
  f.seed(0)
  json_inspect(f.phone_imei(), content="57-654648-937559-8")
  f.seed(0)
  json_inspect(f.from_reg_exp("[A-Z]{2}[0-9]{4,8}W{0,1}"), content="SP464893W")
  f.seed(0)
  json_inspect(f.from_reg_exp("[A-D]{3}x?", ignore_case=true), content="CCbX")
}

///|
test "upstream parity seed 1" {
  let f = @faker.Faker(seed=1)
  f.seed(1)
  json_inspect(f.finance_account_name(), content="Home Loan Account")
  f.seed(1)
  json_inspect(f.finance_account_number(), content="47031013")
  f.seed(1)
  json_inspect(f.finance_amount(), content="417.02")
  f.seed(1)
  json_inspect(f.finance_bic(), content="SAHDBI6CJFO")
  f.seed(1)
  json_inspect(
    f.finance_bitcoin_address(),
    content="31i96bmpxqFcS2Eqy9cNYjGST53aS6qX",
  )
  f.seed(1)
  json_inspect(f.finance_credit_card_cvv(), content="470")
  f.seed(1)
  json_inspect(f.finance_credit_card_issuer(), content="discover")
  f.seed(1)
  json_inspect(f.finance_credit_card_number(), content="6503-1013-3546-2805")
  f.seed(1)
  json_inspect(f.finance_currency_code(), content="JPY")
  f.seed(1)
  json_inspect(f.finance_currency_name(), content="Yen")
  f.seed(1)
  json_inspect(f.finance_currency_numeric_code(), content="392")
  f.seed(1)
  json_inspect(f.finance_currency_symbol(), content="J$")
  f.seed(1)
  json_inspect(
    f.finance_ethereum_address(),
    content="0x9f0632478b9f4d0e9c34bf6fdd103d29fbf6fc0a",
  )
  f.seed(1)
  json_inspect(f.finance_iban(), content="IE39SAHD00454601410936")
  f.seed(1)
  json_inspect(
    f.finance_litecoin_address(),
    content="31i96bmpxqFcS2Eqy9cNYjGST53aS",
  )
  f.seed(1)
  json_inspect(f.finance_pin(), content="4703")
  f.seed(1)
  json_inspect(f.finance_routing_number(), content="064270313")
  f.seed(1)
  json_inspect(f.finance_vat_number(), content="FRQ0310133546")
  f.seed(1)
  json_inspect(
    f.finance_iban(country_code="GB", formatted=true),
    content="GB98 KSAH 0023 5420 4109 36",
  )
  f.seed(1)
  json_inspect(f.commerce_price(), content="417.69")
  f.seed(1)
  json_inspect(f.commerce_isbn(), content="978-0-7031-0133-4")
  f.seed(1)
  json_inspect(f.commerce_isbn(variant=10), content="0-7031-0133-1")
  f.seed(1)
  json_inspect(f.commerce_upc(), content="470310133543")
  f.seed(1)
  json_inspect(f.vehicle_vin(), content="DP09436BXHKN28064")
  f.seed(1)
  json_inspect(f.vehicle_vrm(), content="KS03DCE")
  f.seed(1)
  json_inspect(f.phone_imei(), content="47-031013-354628-7")
  f.seed(1)
  json_inspect(f.from_reg_exp("[A-Z]{2}[0-9]{4,8}W{0,1}"), content="SA10133")
  f.seed(1)
  json_inspect(f.from_reg_exp("[A-D]{3}x?", ignore_case=true), content="cAB")
}

///|
test "upstream parity seed 42" {
  let f = @faker.Faker(seed=42)
  f.seed(42)
  json_inspect(f.finance_account_name(), content="Credit Card Account")
  f.seed(42)
  json_inspect(f.finance_account_number(), content="39751108")
  f.seed(42)
  json_inspect(f.finance_amount(), content="374.54")
  f.seed(42)
  json_inspect(f.finance_bic(), content="YTPECC2VXXX")
  f.seed(42)
  json_inspect(
    f.finance_bitcoin_address(),
    content="3JAaa4SAH2YQdbbiwrhB9hnsMcvA3Ba4XY",
  )
  f.seed(42)
  json_inspect(f.finance_credit_card_cvv(), content="397")
  f.seed(42)
  json_inspect(f.finance_credit_card_issuer(), content="discover")
  f.seed(42)
  json_inspect(f.finance_credit_card_number(), content="6575-1108-6709-8211")
  f.seed(42)
  json_inspect(f.finance_currency_code(), content="INR")
  f.seed(42)
  json_inspect(f.finance_currency_name(), content="Indian Rupee")
  f.seed(42)
  json_inspect(f.finance_currency_numeric_code(), content="356")
  f.seed(42)
  json_inspect(f.finance_currency_symbol(), content="₪")
  f.seed(42)
  json_inspect(
    f.finance_ethereum_address(),
    content="0x8ead331ddf0fc4446b96d368ab4bd1d31efb62f9",
  )
  f.seed(42)
  json_inspect(f.finance_iban(), content="GT69T10P0V1346241560ZH610G35")
  f.seed(42)
  json_inspect(
    f.finance_litecoin_address(),
    content="3JAaa4SAH2YQdbbiwrhB9hnsMcvA",
  )
  f.seed(42)
  json_inspect(f.finance_pin(), content="3975")
  f.seed(42)
  json_inspect(f.finance_routing_number(), content="062197511")
  f.seed(42)
  json_inspect(f.finance_vat_number(), content="FI97511086")
  f.seed(42)
  json_inspect(
    f.finance_iban(country_code="GB", formatted=true),
    content="GB40 JYTP 0016 7080 0252 61",
  )
  f.seed(42)
  json_inspect(f.commerce_price(), content="375.15")
  f.seed(42)
  json_inspect(f.commerce_isbn(), content="978-0-9751108-6-7")
  f.seed(42)
  json_inspect(f.commerce_isbn(variant=10), content="0-9751108-6-1")
  f.seed(42)
  json_inspect(f.commerce_upc(), content="397511086709")
  f.seed(42)
  json_inspect(f.vehicle_vin(), content="CYRK551V7PAZ82113")
  f.seed(42)
  json_inspect(f.vehicle_vrm(), content="JY75EEB")
  f.seed(42)
  json_inspect(f.phone_imei(), content="39-751108-670982-8")
  f.seed(42)
  json_inspect(f.from_reg_exp("[A-Z]{2}[0-9]{4,8}W{0,1}"), content="YT110867")
  f.seed(42)
  json_inspect(f.from_reg_exp("[A-D]{3}x?", ignore_case=true), content="dcC")
}

///|
test "upstream parity seed 12345" {
  let f = @faker.Faker(seed=12345)
  f.seed(12345)
  json_inspect(f.finance_account_name(), content="Savings Account")
  f.seed(12345)
  json_inspect(f.finance_account_number(), content="93125596")
  f.seed(12345)
  json_inspect(f.finance_amount(), content="929.62")
  f.seed(12345)
  json_inspect(f.finance_bic(), content="IEFOMPYN")
  f.seed(12345)
  json_inspect(
    f.finance_bitcoin_address(),
    content="bc1pc67lmynrnry04aptvyrnqgcgrzpt60tw0hjm2wrujt489ggq6k6sxm5hev",
  )
  f.seed(12345)
  json_inspect(f.finance_credit_card_cvv(), content="931")
  f.seed(12345)
  json_inspect(f.finance_credit_card_issuer(), content="visa")
  f.seed(12345)
  json_inspect(f.finance_credit_card_number(), content="4125596767906")
  f.seed(12345)
  json_inspect(f.finance_currency_code(), content="XAF")
  f.seed(12345)
  json_inspect(f.finance_currency_name(), content="CFA Franc BEAC")
  f.seed(12345)
  json_inspect(f.finance_currency_numeric_code(), content="950")
  f.seed(12345)
  json_inspect(f.finance_currency_symbol(), content="₫")
  f.seed(12345)
  json_inspect(
    f.finance_ethereum_address(),
    content="0xe644cdfeaeaf026ebdffefa79afeb30bd0abd1da",
  )
  f.seed(12345)
  json_inspect(f.finance_iban(), content="TN8510696690038964497008")
  f.seed(12345)
  json_inspect(
    f.finance_litecoin_address(),
    content="LbcyAXDKDKX17iENSXHDHtjrJZFMa2NU2",
  )
  f.seed(12345)
  json_inspect(f.finance_pin(), content="9312")
  f.seed(12345)
  json_inspect(f.finance_routing_number(), content="122431256")
  f.seed(12345)
  json_inspect(f.finance_vat_number(), content="SI31255967")
  f.seed(12345)
  json_inspect(
    f.finance_iban(country_code="GB", formatted=true),
    content="GB12 YIEF 5669 0108 9644 79",
  )
  f.seed(12345)
  json_inspect(f.commerce_price(), content="929.69")
  f.seed(12345)
  json_inspect(f.commerce_isbn(), content="978-1-312-55967-7")
  f.seed(12345)
  json_inspect(f.commerce_isbn(variant=10), content="1-312-55967-5")
  f.seed(12345)
  json_inspect(f.commerce_upc(), content="931255967674")
  f.seed(12345)
  json_inspect(f.vehicle_vin(), content="XA66JKYM3MUY01268")
  f.seed(12345)
  json_inspect(f.vehicle_vrm(), content="YI12OPZ")
  f.seed(12345)
  json_inspect(f.phone_imei(), content="93-125596-767901-4")
  f.seed(12345)
  json_inspect(f.from_reg_exp("[A-Z]{2}[0-9]{4,8}W{0,1}"), content="IE55967W")
  f.seed(12345)
  json_inspect(f.from_reg_exp("[A-D]{3}x?", ignore_case=true), content="aaCx")
}

///|
test "upstream parity seed 4294967295" {
  let f = @faker.Faker(seed=4294967295)
  f.seed(4294967295)
  json_inspect(f.finance_account_name(), content="Auto Loan Account")
  f.seed(4294967295)
  json_inspect(f.finance_account_number(), content="09770951")
  f.seed(4294967295)
  json_inspect(f.finance_amount(), content="97.63")
  f.seed(4294967295)
  json_inspect(f.finance_bic(), content="XUUAWFL5XXX")
  f.seed(4294967295)
  json_inspect(
    f.finance_bitcoin_address(),
    content="1MM2YA9UyZqjbWPTucZfBLz2AvS7rPtMA1",
  )
  f.seed(4294967295)
  json_inspect(f.finance_credit_card_cvv(), content="097")
  f.seed(4294967295)
  json_inspect(f.finance_credit_card_issuer(), content="american_express")
  f.seed(4294967295)
  json_inspect(f.finance_credit_card_number(), content="3777-095195-94312")
  f.seed(4294967295)
  json_inspect(f.finance_currency_code(), content="BMD")
  f.seed(4294967295)
  json_inspect(
    f.finance_currency_name(),
    content="Bermudian Dollar (customarily known as Bermuda Dollar)",
  )
  f.seed(4294967295)
  json_inspect(f.finance_currency_numeric_code(), content="060")
  f.seed(4294967295)
  json_inspect(f.finance_currency_symbol(), content="Bs")
  f.seed(4294967295)
  json_inspect(
    f.finance_ethereum_address(),
    content="0x2ebb0fd3ecf973ecda4f5dbc0dbd29cabd008e74",
  )
  f.seed(4294967295)
  json_inspect(f.finance_iban(), content="BA647050593084037065")
  f.seed(4294967295)
  json_inspect(
    f.finance_litecoin_address(),
    content="3MM2YA9UyZqjbWPTucZfBLz2Av",
  )
  f.seed(4294967295)
  json_inspect(f.finance_pin(), content="0977")
  f.seed(4294967295)
  json_inspect(f.finance_routing_number(), content="021697706")
  f.seed(4294967295)
  json_inspect(f.finance_vat_number(), content="BG7709519594")
  f.seed(4294967295)
  json_inspect(
    f.finance_iban(country_code="GB", formatted=true),
    content="GB16 CXUU 0605 9418 4037 50",
  )
  f.seed(4294967295)
  json_inspect(f.commerce_price(), content="98.55")
  f.seed(4294967295)
  json_inspect(f.commerce_isbn(), content="978-0-9770951-9-3")
  f.seed(4294967295)
  json_inspect(f.commerce_isbn(variant=10), content="0-9770951-9-3")
  f.seed(4294967295)
  json_inspect(f.commerce_upc(), content="097709519599")
  f.seed(4294967295)
  json_inspect(f.vehicle_vin(), content="3XTS0YK43JZD31988")
  f.seed(4294967295)
  json_inspect(f.vehicle_vrm(), content="CX77AZP")
  f.seed(4294967295)
  json_inspect(f.phone_imei(), content="09-770951-959431-1")
  f.seed(4294967295)
  json_inspect(f.from_reg_exp("[A-Z]{2}[0-9]{4,8}W{0,1}"), content="XU0951959")
  f.seed(4294967295)
  json_inspect(f.from_reg_exp("[A-D]{3}x?", ignore_case=true), content="dDD")
}
