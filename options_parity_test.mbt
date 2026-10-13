// Generated against the pinned Faker checkout by scripts/generate-parity.mjs.

///|
test "upstream parity seed 0" {
  let f = @faker.Faker(seed=0)
  f.seed(0)
  json_inspect(
    f.airline_flight_number(length=3, add_leading_zeros=true),
    content="0576",
  )
  f.seed(0)
  json_inspect(
    f.airline_record_locator(allow_numerics=true, allow_visually_similar=true),
    content="JPLJFN",
  )
  f.seed(0)
  json_inspect(f.airline_seat(aircraft_type="widebody"), content="33H")
  f.seed(0)
  json_inspect(
    f.alphanumeric(length=12, casing=Lower, exclude="abc1"),
    content="lqnlhoiwygtk",
  )
  f.seed(0)
  json_inspect(f.binary(length=8, prefix="b"), content="b11110101")
  f.seed(0)
  json_inspect(f.octal(length=6, prefix="0o"), content="0o454435")
  f.seed(0)
  json_inspect(
    f.hexadecimal(length=10, prefix="#", casing=Upper),
    content="#CFDB9E9DF8",
  )
  f.seed(0)
  json_inspect(f.numeric(length=10, exclude="13579"), content="4664464882")
  f.seed(0)
  json_inspect(f.nanoid(length=10), content="IxETnwV5PR")
  f.seed(0)
  json_inspect(f.from_characters("abc", length=10), content="bcbbbbbccb")
  f.seed(0)
  json_inspect(
    f.color_rgb(include_alpha=true, prefix="#", casing=Upper),
    content="#CFDB9E9D",
  )
  f.seed(0)
  json_inspect(f.color_hsl(include_alpha=true), content=[198, 0.72, 0.6, 0.55])
  f.seed(0)
  json_inspect(
    @faker.color_css(
      f.color_by_css_color_space(),
      model="color",
      space="display-p3",
    ),
    content="color(display-p3 0.5488 0.7152 0.6028)",
  )
  f.seed(0)
  json_inspect(
    f.commerce_isbn(variant=10, separator=" "),
    content="1 76546 489 7",
  )
  f.seed(0)
  json_inspect(
    f.commerce_price(min=10, max=500, decimals=3, symbol="$"),
    content="$278.915",
  )
  f.seed(0)
  json_inspect(f.commerce_upc(prefix="01234"), content="012345765469")
  f.seed(0)
  json_inspect(f.date_anytime(ref_date=1600000000000L), content="1603078765320")
  f.seed(0)
  json_inspect(f.date_betweens(1500000000000L, 1600000000000L, count=4), content=[
    "1554488318300", "1554881350393", "1560276337607", "1571518936637",
  ])
  f.seed(0)
  json_inspect(
    f.date_birthdate(min=18, max=65, mode="age", ref_date=1600000000000L),
    content="348517560027",
  )
  f.seed(0)
  json_inspect(
    f.date_future(years=5, min_years=2, ref_date=1600000000000L),
    content="1715041565918",
  )
  f.seed(0)
  json_inspect(
    f.date_past(years=5, min_years=2, ref_date=1600000000000L),
    content="1494116764918",
  )
  f.seed(0)
  json_inspect(
    f.date_recent(days=10, min_days=3, ref_date=1600000000000L),
    content="1599467921858",
  )
  f.seed(0)
  json_inspect(
    f.date_soon(days=10, ref_date=1600000000000L),
    content="1600474175319",
  )
  f.seed(0)
  json_inspect(f.date_month(abbreviated=true, context=true), content="Jun")
  f.seed(0)
  json_inspect(f.date_weekday(abbreviated=true, context=true), content="Sun")
  f.seed(0)
  json_inspect(f.finance_account_number(length=12), content="576546489375")
  f.seed(0)
  json_inspect(
    f.finance_amount(min=5, max=50, decimals=4, symbol="€"),
    content="€29.6966",
  )
  f.seed(0)
  json_inspect(f.finance_bic(include_branch_code=true), content="OSPOIONFXXX")
  f.seed(0)
  json_inspect(
    f.finance_bitcoin_address(family="bech32", testnet=true),
    content="tb1kqmkfngwyetjlx330usvztgs4n5yjf9sgl0mmmy",
  )
  f.seed(0)
  json_inspect(
    f.finance_bitcoin_address(family="taproot"),
    content="bc1pkqmkfngwyetjlx330usvztgs4n5yjf9sgl0mmmypdfq2pp75cdlgz476n9",
  )
  f.seed(0)
  json_inspect(
    f.finance_credit_card_number(issuer="visa"),
    content="4765-4648-9375-5905",
  )
  f.seed(0)
  json_inspect(
    f.finance_credit_card_number(issuer="63[7-9]#-####-####-###L"),
    content="6387-6546-4893-7559",
  )
  f.seed(0)
  json_inspect(f.finance_pin(length=6), content="576546")
  f.seed(0)
  json_inspect(f.finance_vat_number(country_code="ES"), content="ESS6546489D")
  f.seed(0)
  json_inspect(@faker.multiple(_ => f.finance_vat_number(), count=40), content=[
    "IE6546489IW", "PL5590008789", "PL4716195427", "HR50666963460", "LV62133549121",
    "LU24211611", "ESN8094967A", "EE121340652", "IE5936172E", "IT08062792555", "DK94862838",
    "IT86759646036", "EE641255566", "FRWC488719791", "RO2188540", "LV47898037150",
    "DE072397016", "IT29655733219", "MT42204363", "CZ06458926", "EE073358682", "PL1962972250",
    "DE434258151", "MT35114397", "NL055922109B77", "EE504983929", "SI86828603", "CY94463181N",
    "DK08999730", "FI21070710", "BG2458721032", "HR66231706772", "FI52314070", "IE5960455P",
    "EE139195484", "MT39663762", "CZ9458495898", "CZ304280933", "ATU14909843", "DK60040222",
  ])
  f.seed(0)
  json_inspect(
    f.finance_iban(country_code="DE", formatted=true),
    content="DE16 7568 3559 0017 9411 95",
  )
  f.seed(0)
  json_inspect(
    f.git_commit_date(ref_date=1600000000000L),
    content="Sun Sep 13 01:36:56 2020 +0600",
  )
  f.seed(0)
  json_inspect(
    f.git_commit_entry(merge=true, eol="LF", ref_date=1600000000000L),
    content="commit cfdb9e9df8bbce110cbdfbab2e3eb95bac0dddef\nMerge: 79f1ee4 268c9f2\nAuthor: Madonna Fisher <Madonna.Fisher83@yahoo.com>\nDate: Sun Sep 13 11:52:45 2020 +0000\n\n    transmit online pixel\n",
  )
  f.seed(0)
  json_inspect(f.git_commit_sha(length=7), content="cfdb9e9")
  f.seed(0)
  json_inspect(
    f.image_data_uri(width=10, height=20, color="red", base64=true),
    content="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgYmFzZVByb2ZpbGU9ImZ1bGwiIHdpZHRoPSIxMCIgaGVpZ2h0PSIyMCI+PHJlY3Qgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0icmVkIi8+PHRleHQgeD0iNSIgeT0iMTAiIGZvbnQtc2l6ZT0iMjAiIGFsaWdubWVudC1iYXNlbGluZT0ibWlkZGxlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmaWxsPSJ3aGl0ZSI+MTB4MjA8L3RleHQ+PC9zdmc+",
  )
  f.seed(0)
  json_inspect(
    f.image_url(width=100, height=50),
    content="https://picsum.photos/seed/IBxqErTX/100/50",
  )
  f.seed(0)
  json_inspect(
    f.image_url_picsum_photos(width=100, height=50, grayscale=true, blur=3),
    content="https://picsum.photos/seed/IBxqErTX/100/50?grayscale&blur=3",
  )
  f.seed(0)
  json_inspect(
    f.image_person_portrait(size=128, sex=Female),
    content="https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/128/54.jpg",
  )
  f.seed(0)
  json_inspect(
    f.internet_display_name(first_name="Jeanne", last_name="Doe"),
    content="Jeanne_Doe",
  )
  f.seed(0)
  json_inspect(
    f.internet_email(
      first_name="Jeanne",
      last_name="Doe",
      provider="example.dev",
      allow_special_characters=true,
    ),
    content="Jeanne+Doe@example.dev",
  )
  f.seed(0)
  json_inspect(
    f.internet_example_email(
      first_name="Jeanne",
      last_name="Doe",
      allow_special_characters=true,
    ),
    content="Jeanne?Doe@example.net",
  )
  f.seed(0)
  json_inspect(f.internet_emoji(types=["food", "nature"]), content="🦉")
  f.seed(0)
  json_inspect(
    f.internet_http_status_code(types=["clientError", "serverError"]),
    content=507,
  )
  f.seed(0)
  json_inspect(f.internet_ipv4(network="private-a"), content="10.140.127.10")
  f.seed(0)
  json_inspect(f.internet_ipv4(network="test-net-2"), content="198.51.100.140")
  f.seed(0)
  json_inspect(f.internet_ipv4(network="multicast"), content="232.199.240.171")
  f.seed(0)
  json_inspect(
    f.internet_jwt(
      header={ "x": 1 },
      payload={ "iss": "me" },
      ref_date=1600000000000L,
    ),
    content="eyJ4IjoxfQ.eyJpc3MiOiJtZSJ9.IBxqErTXnNwzV451PMRYNsM7D8WwpgMsz1CBCWGmrH3FFd7jmzrZ6caEfsf96E8c",
  )
  f.seed(0)
  json_inspect(f.internet_mac(separator="-"), content="8b-98-6a-7e-f6-c8")
  f.seed(0)
  json_inspect(
    f.internet_password(length=20, prefix="Ab1!"),
    content="Ab1!UdZTIJuElSVxpjsl",
  )
  f.seed(0)
  json_inspect(
    f.internet_url(protocol="http", append_slash=true),
    content="http://negligible-provider.name/",
  )
  f.seed(0)
  json_inspect(
    f.internet_username(first_name="Ольга", last_name="Васильев"),
    content="Olukga_Vasilukev",
  )
  f.seed(0)
  json_inspect(
    f.internet_username(first_name="Zoë", last_name="Núñez"),
    content="Zoe_Nunez",
  )
  f.seed(0)
  json_inspect(f.location_country_code(variant="alpha-3"), content="MAR")
  f.seed(0)
  json_inspect(f.location_country_code(variant="numeric"), content="504")
  f.seed(0)
  json_inspect(f.location_direction(abbreviated=true), content="NE")
  f.seed(0)
  json_inspect(f.location_cardinal_direction(abbreviated=true), content="S")
  f.seed(0)
  json_inspect(f.location_ordinal_direction(abbreviated=true), content="SE")
  f.seed(0)
  json_inspect(f.location_state(abbreviated=true), content="NV")
  f.seed(0)
  json_inspect(
    f.location_latitude(min=-10, max=10, precision=6),
    content=0.97627,
  )
  f.seed(0)
  json_inspect(f.location_longitude(min=-10, max=10, precision=2), content=0.98)
  f.seed(0)
  json_inspect(
    round_coordinate(
      f.location_nearby_gps_coordinate(
        origin=(33.0, -170.0),
        radius=1000,
        metric=true,
      ),
    ),
    content=[31.066398208, -176.105664842],
  )
  f.seed(0)
  json_inspect(f.location_zip_code(format="####-??"), content="5765-LQ")
  f.seed(0)
  json_inspect(
    f.lorem_lines(count=3),
    content="Sumo pax impedit curriculum sint debitis vallum.\nCredo textilis eveniet minus vespillo aeneus alias accusator tristis tergo.\nVolutabrum thermae deinde termes angustus rerum arbitro vinco enim.",
  )
  f.seed(0)
  json_inspect(
    f.lorem_paragraphs(count=2, separator="|"),
    content="Sumo pax impedit curriculum sint debitis vallum. Credo textilis eveniet minus vespillo aeneus alias accusator tristis tergo. Volutabrum thermae deinde termes angustus rerum arbitro vinco enim.|Celo teres defleo minus accusamus quae. Provident villa statim contigo debilito subiungo adulescens. Spargo bene aperiam comedo convoco molestiae decens voveo.",
  )
  f.seed(0)
  json_inspect(
    f.lorem_sentence(count=5),
    content="Inflammatio sumo pax impedit curriculum.",
  )
  f.seed(0)
  json_inspect(
    f.lorem_sentences(count=3, separator="|"),
    content="Sumo pax impedit curriculum sint debitis vallum.|Credo textilis eveniet minus vespillo aeneus alias accusator tristis tergo.|Volutabrum thermae deinde termes angustus rerum arbitro vinco enim.",
  )
  f.seed(0)
  json_inspect(f.lorem_slug(count=4), content="inflammatio-sumo-pax-impedit")
  f.seed(0)
  json_inspect(
    f.lorem_word(min_length=5, max_length=7, strategy=Closest),
    content="illum",
  )
  f.seed(0)
  json_inspect(f.person_full_name(last_name="Doe"), content="Kian Doe")
  f.seed(0)
  json_inspect(f.person_last_name(sex=Male), content="Rau")
  f.seed(0)
  json_inspect(f.person_middle_name(sex=Female), content="Lyric")
  f.seed(0)
  json_inspect(f.person_prefix(sex=Male), content="Mr.")
  f.seed(0)
  json_inspect(f.phone_number(style="international"), content="+16766464893")
  f.seed(0)
  json_inspect(f.phone_number(style="national"), content="(676) 646-4893")
  f.seed(0)
  json_inspect(f.roman_numeral(min=10, max=100), content="LIX")
  f.seed(0)
  json_inspect(f.number_hex(min=10, max=1000), content="229")
  f.seed(0)
  json_inspect(f.number_binary(min=10, max=1000), content="1000101001")
  f.seed(0)
  json_inspect(f.number_octal(min=10, max=1000), content="1051")
  f.seed(0)
  json_inspect(f.int64(), content="4943272583565992")
  f.seed(0)
  json_inspect(f.float(min=0, max=10, multiple_of=0.25), content=5.5)
  f.seed(0)
  json_inspect(f.boolean(probability=0.8), content=true)
  f.seed(0)
  json_inspect(
    f.system_common_file_name(extension="txt"),
    content="tapioca_blaring.txt",
  )
  f.seed(0)
  json_inspect(
    f.system_cron(include_year=true, include_non_standard=true),
    content="@annually",
  )
  f.seed(0)
  json_inspect(f.system_file_ext(mime_type="application/json"), content="map")
  f.seed(0)
  json_inspect(
    f.system_file_name(extension_count=2),
    content="tapioca_blaring.buffer.ear",
  )
  f.seed(0)
  json_inspect(
    f.system_network_interface(interface_type="wl", schema="mac"),
    content="wlx8b986a7ef6c8",
  )
  f.seed(0)
  json_inspect(
    f.word_adjective(min_length=5, max_length=7, strategy=Shortest),
    content="ornery",
  )
  f.seed(0)
  json_inspect(
    f.word_sample(min_length=4, max_length=4, strategy=AnyLength),
    content="live",
  )
  f.seed(0)
  json_inspect(
    f.word_words(count=5),
    content="jealous valuable wasabi uncover agitated",
  )
  f.seed(0)
  json_inspect(
    f.replace_credit_card_symbols(pattern="1234-[4-9]-##!!-L"),
    content="1234-7-7665-4",
  )
  f.seed(0)
  json_inspect(f.array_samples([1, 2, 3, 4, 5], count=3), content=[3, 4, 4])
  f.seed(0)
  json_inspect(f.unique_array(["a", "b", "c", "b", "d", "e"], 3), content=[
    "a", "d", "b",
  ])
  f.seed(0)
  json_inspect(f.unique_array(["a", "b"], 5), content=["a", "b"])
  f.seed(0)
  json_inspect(@faker.unique_array_with(() => f.int(max=5), 4), content=[
    3, 4, 2, 5,
  ])
  f.seed(0)
  json_inspect(@faker.unique_array_with(() => f.int(max=2), 5), content=[
    1, 2, 0,
  ])
  f.seed(0)
  json_inspect(@faker.multiple(i => f.int(max=9) * 10 + i, count=4), content=[
    50, 71, 62, 53,
  ])
  f.seed(0)
  json_inspect(f.range_to_number(Range(min=1, max=10)), content=6)
  f.seed(0)
  json_inspect(
    @faker.slugify("Héllo Wörld ß ﬁne ½.txt"),
    content="Hello-World--fine-12.txt",
  )
  f.seed(0)
  json_inspect(
    @faker.slugify("Ｆｕｌｌ　ｗｉｄｔｈ ⅷ ㎏ ñandú"),
    content="Full-width-viii-kg-nandu",
  )
}

///|
test "upstream parity seed 1" {
  let f = @faker.Faker(seed=1)
  f.seed(1)
  json_inspect(
    f.airline_flight_number(length=3, add_leading_zeros=true),
    content="0470",
  )
  f.seed(1)
  json_inspect(
    f.airline_record_locator(allow_numerics=true, allow_visually_similar=true),
    content="FP0A53",
  )
  f.seed(1)
  json_inspect(f.airline_seat(aircraft_type="widebody"), content="26H")
  f.seed(1)
  json_inspect(
    f.alphanumeric(length=12, casing=Lower, exclude="abc1"),
    content="hr0d536fglhp",
  )
  f.seed(1)
  json_inspect(f.binary(length=8, prefix="b"), content="b01000000")
  f.seed(1)
  json_inspect(f.octal(length=6, prefix="0o"), content="0o350210")
  f.seed(1)
  json_inspect(
    f.hexadecimal(length=10, prefix="#", casing=Upper),
    content="#9F0632478B",
  )
  f.seed(1)
  json_inspect(f.numeric(length=10, exclude="13579"), content="4602000224")
  f.seed(1)
  json_inspect(f.nanoid(length=10), content="Ii5lxGSFyc")
  f.seed(1)
  json_inspect(f.from_characters("abc", length=10), content="bcaaaaabbb")
  f.seed(1)
  json_inspect(
    f.color_rgb(include_alpha=true, prefix="#", casing=Upper),
    content="#9F063247",
  )
  f.seed(1)
  json_inspect(f.color_hsl(include_alpha=true), content=[150, 0.72, 0, 0.3])
  f.seed(1)
  json_inspect(
    @faker.color_css(
      f.color_by_css_color_space(),
      model="color",
      space="display-p3",
    ),
    content="color(display-p3 0.417 0.7203 0.0001)",
  )
  f.seed(1)
  json_inspect(
    f.commerce_isbn(variant=10, separator=" "),
    content="0 7031 0133 1",
  )
  f.seed(1)
  json_inspect(
    f.commerce_price(min=10, max=500, decimals=3, symbol="$"),
    content="$214.349",
  )
  f.seed(1)
  json_inspect(f.commerce_upc(prefix="01234"), content="012344703103")
  f.seed(1)
  json_inspect(f.date_anytime(ref_date=1600000000000L), content="1594766411881")
  f.seed(1)
  json_inspect(f.date_betweens(1500000000000L, 1600000000000L, count=4), content=[
    "1500011437481", "1530233257263", "1541702200470", "1572032449344",
  ])
  f.seed(1)
  json_inspect(
    f.date_birthdate(min=18, max=65, mode="age", ref_date=1600000000000L),
    content="148895822848",
  )
  f.seed(1)
  json_inspect(
    f.date_future(years=5, min_years=2, ref_date=1600000000000L),
    content="1702561649105",
  )
  f.seed(1)
  json_inspect(
    f.date_past(years=5, min_years=2, ref_date=1600000000000L),
    content="1481636848105",
  )
  f.seed(1)
  json_inspect(
    f.date_recent(days=10, min_days=3, ref_date=1600000000000L),
    content="1599388214491",
  )
  f.seed(1)
  json_inspect(
    f.date_soon(days=10, ref_date=1600000000000L),
    content="1600360307595",
  )
  f.seed(1)
  json_inspect(f.date_month(abbreviated=true, context=true), content="Jul")
  f.seed(1)
  json_inspect(f.date_weekday(abbreviated=true, context=true), content="Sat")
  f.seed(1)
  json_inspect(f.finance_account_number(length=12), content="470310133546")
  f.seed(1)
  json_inspect(
    f.finance_amount(min=5, max=50, decimals=4, symbol="€"),
    content="€23.7660",
  )
  f.seed(1)
  json_inspect(f.finance_bic(include_branch_code=true), content="KSAHBZ36EJF")
  f.seed(1)
  json_inspect(
    f.finance_bitcoin_address(family="bech32", testnet=true),
    content="tb1fr0a536dekfp7w0pfk57tycqww326w4fykqcpu0",
  )
  f.seed(1)
  json_inspect(
    f.finance_bitcoin_address(family="taproot"),
    content="bc1pfr0a536dekfp7w0pfk57tycqww326w4fykqcpu0szr9t4gxaa50p79h2l5",
  )
  f.seed(1)
  json_inspect(
    f.finance_credit_card_number(issuer="visa"),
    content="4703101335466",
  )
  f.seed(1)
  json_inspect(
    f.finance_credit_card_number(issuer="63[7-9]#-####-####-###L"),
    content="6387-0310-1335-4621",
  )
  f.seed(1)
  json_inspect(f.finance_pin(length=6), content="470310")
  f.seed(1)
  json_inspect(f.finance_vat_number(country_code="ES"), content="ESH03101335")
  f.seed(1)
  json_inspect(@faker.multiple(_ => f.finance_vat_number(), count=40), content=[
    "FRQ0310133546", "DE806451189", "EL688001804", "SI56368079", "NL714922106B02",
    "EE405156146", "FR1J659591183", "CZ3778673284", "SK6619454295", "ATU63583960",
    "SI79119607", "NL710002855B81", "EE595082838", "NL101012750B19", "IT22715982468",
    "CZ04653953", "IE6203627BW", "EE816592077", "SE902699596301", "HU65993911", "CY40980131V",
    "ESR8894572E", "LT054838511", "PL6046909396", "PT662578768", "EL643443649", "LV14378962285",
    "PL5757543030", "SK1886514325", "EL992114722", "PT462154165", "LU17257038", "PT589880676",
    "PL0772263747", "SK3195969551", "ESB70386614", "IT92227405272", "ATU58375598",
    "ATU74922041", "LU86738486",
  ])
  f.seed(1)
  json_inspect(
    f.finance_iban(country_code="DE", formatted=true),
    content="DE60 7002 0043 4204 1096 88",
  )
  f.seed(1)
  json_inspect(
    f.git_commit_date(ref_date=1600000000000L),
    content="Sat Sep 12 22:27:10 2020 +0600",
  )
  f.seed(1)
  json_inspect(
    f.git_commit_entry(merge=true, eol="LF", ref_date=1600000000000L),
    content="commit 9f0632478b9f4d0e9c34bf6fdd103d29fbf6fc0a\nMerge: fa6b29d 6620e45\nAuthor: Leanne_Price41 <Leanne_Price@hotmail.com>\nDate: Sun Sep 13 10:07:33 2020 -0800\n\n    calculate redundant feed\n",
  )
  f.seed(1)
  json_inspect(f.git_commit_sha(length=7), content="9f06324")
  f.seed(1)
  json_inspect(
    f.image_data_uri(width=10, height=20, color="red", base64=true),
    content="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgYmFzZVByb2ZpbGU9ImZ1bGwiIHdpZHRoPSIxMCIgaGVpZ2h0PSIyMCI+PHJlY3Qgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0icmVkIi8+PHRleHQgeD0iNSIgeT0iMTAiIGZvbnQtc2l6ZT0iMjAiIGFsaWdubWVudC1iYXNlbGluZT0ibWlkZGxlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmaWxsPSJ3aGl0ZSI+MTB4MjA8L3RleHQ+PC9zdmc+",
  )
  f.seed(1)
  json_inspect(
    f.image_url(width=100, height=50),
    content="https://picsum.photos/seed/I0i95bl/100/50",
  )
  f.seed(1)
  json_inspect(
    f.image_url_picsum_photos(width=100, height=50, grayscale=true, blur=3),
    content="https://picsum.photos/seed/I0i95bl/100/50?grayscale&blur=3",
  )
  f.seed(1)
  json_inspect(
    f.image_person_portrait(size=128, sex=Female),
    content="https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/128/41.jpg",
  )
  f.seed(1)
  json_inspect(
    f.internet_display_name(first_name="Jeanne", last_name="Doe"),
    content="Jeanne72",
  )
  f.seed(1)
  json_inspect(
    f.internet_email(
      first_name="Jeanne",
      last_name="Doe",
      provider="example.dev",
      allow_special_characters=true,
    ),
    content="Jeanne#Doe72@example.dev",
  )
  f.seed(1)
  json_inspect(
    f.internet_example_email(
      first_name="Jeanne",
      last_name="Doe",
      allow_special_characters=true,
    ),
    content="Jeanne_Doe0@example.net",
  )
  f.seed(1)
  json_inspect(f.internet_emoji(types=["food", "nature"]), content="🥣")
  f.seed(1)
  json_inspect(
    f.internet_http_status_code(types=["clientError", "serverError"]),
    content=422,
  )
  f.seed(1)
  json_inspect(f.internet_ipv4(network="private-a"), content="10.106.193.244")
  f.seed(1)
  json_inspect(f.internet_ipv4(network="test-net-2"), content="198.51.100.106")
  f.seed(1)
  json_inspect(f.internet_ipv4(network="multicast"), content="230.172.31.67")
  f.seed(1)
  json_inspect(
    f.internet_jwt(
      header={ "x": 1 },
      payload={ "iss": "me" },
      ref_date=1600000000000L,
    ),
    content="eyJ4IjoxfQ.eyJpc3MiOiJtZSJ9.I0i95bloxpGcS1Fpy8cNYjGST52aS6qXxGjGP1KZKhM6rUih81Gdgu3z9AH6pHp3",
  )
  f.seed(1)
  json_inspect(f.internet_mac(separator="-"), content="6b-04-21-25-68-6a")
  f.seed(1)
  json_inspect(
    f.internet_password(length=20, prefix="Ab1!"),
    content="Ab1!He2AFTHb4tHV3mbt",
  )
  f.seed(1)
  json_inspect(
    f.internet_url(protocol="http", append_slash=true),
    content="http://inferior-punctuation.biz/",
  )
  f.seed(1)
  json_inspect(
    f.internet_username(first_name="Ольга", last_name="Васильев"),
    content="Olukga.Vasilukev72",
  )
  f.seed(1)
  json_inspect(
    f.internet_username(first_name="Zoë", last_name="Núñez"),
    content="Zoe.Nunez72",
  )
  f.seed(1)
  json_inspect(f.location_country_code(variant="alpha-3"), content="IMN")
  f.seed(1)
  json_inspect(f.location_country_code(variant="numeric"), content="833")
  f.seed(1)
  json_inspect(f.location_direction(abbreviated=true), content="W")
  f.seed(1)
  json_inspect(f.location_cardinal_direction(abbreviated=true), content="E")
  f.seed(1)
  json_inspect(f.location_ordinal_direction(abbreviated=true), content="NW")
  f.seed(1)
  json_inspect(f.location_state(abbreviated=true), content="MA")
  f.seed(1)
  json_inspect(
    f.location_latitude(min=-10, max=10, precision=6),
    content=-1.65956,
  )
  f.seed(1)
  json_inspect(
    f.location_longitude(min=-10, max=10, precision=2),
    content=-1.66,
  )
  f.seed(1)
  json_inspect(
    round_coordinate(
      f.location_nearby_gps_coordinate(
        origin=(33.0, -170.0),
        radius=1000,
        metric=true,
      ),
    ),
    content=[36.212811408, -175.593471816],
  )
  f.seed(1)
  json_inspect(f.location_zip_code(format="####-??"), content="4703-DC")
  f.seed(1)
  json_inspect(
    f.lorem_lines(count=3),
    content="Suppellex a cognatus arca aliquam audentia.\nCrux fugit curatio stillicidium bardus.\nAcsi spargo cur laboriosam aqua avaritia thesaurus volo combibo stultus.",
  )
  f.seed(1)
  json_inspect(
    f.lorem_paragraphs(count=2, separator="|"),
    content="Suppellex a cognatus arca aliquam audentia. Crux fugit curatio stillicidium bardus. Acsi spargo cur laboriosam aqua avaritia thesaurus volo combibo stultus.|Varius ago adflicto assentator utrimque altus curiositas vita expedita stultus. Stipes trucido accusamus tandem voveo. Cicuta testimonium amet dedico ver claudeo civis aperio.",
  )
  f.seed(1)
  json_inspect(
    f.lorem_sentence(count=5),
    content="Cur suppellex a cognatus arca.",
  )
  f.seed(1)
  json_inspect(
    f.lorem_sentences(count=3, separator="|"),
    content="Suppellex a cognatus arca aliquam audentia.|Crux fugit curatio stillicidium bardus.|Acsi spargo cur laboriosam aqua avaritia thesaurus volo combibo stultus.",
  )
  f.seed(1)
  json_inspect(f.lorem_slug(count=4), content="cur-suppellex-a-cognatus")
  f.seed(1)
  json_inspect(
    f.lorem_word(min_length=5, max_length=7, strategy=Closest),
    content="curia",
  )
  f.seed(1)
  json_inspect(f.person_full_name(last_name="Doe"), content="Aaliyah Doe")
  f.seed(1)
  json_inspect(f.person_last_name(sex=Male), content="Reichel")
  f.seed(1)
  json_inspect(f.person_middle_name(sex=Female), content="Maddie")
  f.seed(1)
  json_inspect(f.person_prefix(sex=Male), content="Mr.")
  f.seed(1)
  json_inspect(f.phone_number(style="international"), content="+15704101335")
  f.seed(1)
  json_inspect(f.phone_number(style="national"), content="(570) 410-1335")
  f.seed(1)
  json_inspect(f.roman_numeral(min=10, max=100), content="XLVII")
  f.seed(1)
  json_inspect(f.number_hex(min=10, max=1000), content="1a7")
  f.seed(1)
  json_inspect(f.number_binary(min=10, max=1000), content="110100111")
  f.seed(1)
  json_inspect(f.number_octal(min=10, max=1000), content="647")
  f.seed(1)
  json_inspect(f.int64(), content="3756200289967619")
  f.seed(1)
  json_inspect(f.float(min=0, max=10, multiple_of=0.25), content=4.25)
  f.seed(1)
  json_inspect(f.boolean(probability=0.8), content=true)
  f.seed(1)
  json_inspect(
    f.system_common_file_name(extension="txt"),
    content="fog_aboard.txt",
  )
  f.seed(1)
  json_inspect(
    f.system_cron(include_year=true, include_non_standard=true),
    content="@annually",
  )
  f.seed(1)
  json_inspect(f.system_file_ext(mime_type="application/json"), content="json")
  f.seed(1)
  json_inspect(
    f.system_file_name(extension_count=2),
    content="fog_aboard.otf.7z",
  )
  f.seed(1)
  json_inspect(
    f.system_network_interface(interface_type="wl", schema="mac"),
    content="wlx6b042125686a",
  )
  f.seed(1)
  json_inspect(
    f.word_adjective(min_length=5, max_length=7, strategy=Shortest),
    content="leading",
  )
  f.seed(1)
  json_inspect(
    f.word_sample(min_length=4, max_length=4, strategy=AnyLength),
    content="whoa",
  )
  f.seed(1)
  json_inspect(f.word_words(count=5), content="boohoo pish tenderly above pop")
  f.seed(1)
  json_inspect(
    f.replace_credit_card_symbols(pattern="1234-[4-9]-##!!-L"),
    content="1234-6-7043-6",
  )
  f.seed(1)
  json_inspect(f.array_samples([1, 2, 3, 4, 5], count=3), content=[3, 4, 1])
  f.seed(1)
  json_inspect(f.unique_array(["a", "b", "c", "b", "d", "e"], 3), content=[
    "b", "d", "a",
  ])
  f.seed(1)
  json_inspect(f.unique_array(["a", "b"], 5), content=["b", "a"])
  f.seed(1)
  json_inspect(@faker.unique_array_with(() => f.int(max=5), 4), content=[
    2, 4, 0, 1,
  ])
  f.seed(1)
  json_inspect(@faker.unique_array_with(() => f.int(max=2), 5), content=[
    1, 2, 0,
  ])
  f.seed(1)
  json_inspect(@faker.multiple(i => f.int(max=9) * 10 + i, count=4), content=[
    40, 71, 2, 33,
  ])
  f.seed(1)
  json_inspect(f.range_to_number(Range(min=1, max=10)), content=5)
  f.seed(1)
  json_inspect(
    @faker.slugify("Héllo Wörld ß ﬁne ½.txt"),
    content="Hello-World--fine-12.txt",
  )
  f.seed(1)
  json_inspect(
    @faker.slugify("Ｆｕｌｌ　ｗｉｄｔｈ ⅷ ㎏ ñandú"),
    content="Full-width-viii-kg-nandu",
  )
}

///|
test "upstream parity seed 42" {
  let f = @faker.Faker(seed=42)
  f.seed(42)
  json_inspect(
    f.airline_flight_number(length=3, add_leading_zeros=true),
    content="0497",
  )
  f.seed(42)
  json_inspect(
    f.airline_record_locator(allow_numerics=true, allow_visually_similar=true),
    content="DYQL55",
  )
  f.seed(42)
  json_inspect(f.airline_seat(aircraft_type="widebody"), content="23K")
  f.seed(42)
  json_inspect(
    f.alphanumeric(length=12, casing=Lower, exclude="abc1"),
    content="fyrn552vnq0z",
  )
  f.seed(42)
  json_inspect(f.binary(length=8, prefix="b"), content="b01110001")
  f.seed(42)
  json_inspect(f.octal(length=6, prefix="0o"), content="0o275411")
  f.seed(42)
  json_inspect(
    f.hexadecimal(length=10, prefix="#", casing=Upper),
    content="#8EAD331DDF",
  )
  f.seed(42)
  json_inspect(f.numeric(length=10, exclude="13579"), content="2864000866")
  f.seed(42)
  json_inspect(f.nanoid(length=10), content="WB9RHYdbwi")
  f.seed(42)
  json_inspect(f.from_characters("abc", length=10), content="bccbaaacbc")
  f.seed(42)
  json_inspect(
    f.color_rgb(include_alpha=true, prefix="#", casing=Upper),
    content="#8EAD331D",
  )
  f.seed(42)
  json_inspect(f.color_hsl(include_alpha=true), content=[135, 0.96, 0.73, 0.6])
  f.seed(42)
  json_inspect(
    @faker.color_css(
      f.color_by_css_color_space(),
      model="color",
      space="display-p3",
    ),
    content="color(display-p3 0.3745 0.9508 0.732)",
  )
  f.seed(42)
  json_inspect(
    f.commerce_isbn(variant=10, separator=" "),
    content="0 9751108 6 1",
  )
  f.seed(42)
  json_inspect(
    f.commerce_price(min=10, max=500, decimals=3, symbol="$"),
    content="$193.525",
  )
  f.seed(42)
  json_inspect(f.commerce_upc(prefix="01234"), content="012343975112")
  f.seed(42)
  json_inspect(f.date_anytime(ref_date=1600000000000L), content="1592086994376")
  f.seed(42)
  json_inspect(f.date_betweens(1500000000000L, 1600000000000L, count=4), content=[
    "1537454011885", "1559865848420", "1573199394181", "1595071430641",
  ])
  f.seed(42)
  json_inspect(
    f.date_birthdate(min=18, max=65, mode="age", ref_date=1600000000000L),
    content="84549427951",
  )
  f.seed(42)
  json_inspect(
    f.date_future(years=5, min_years=2, ref_date=1600000000000L),
    content="1698538852456",
  )
  f.seed(42)
  json_inspect(
    f.date_past(years=5, min_years=2, ref_date=1600000000000L),
    content="1477614051456",
  )
  f.seed(42)
  json_inspect(
    f.date_recent(days=10, min_days=3, ref_date=1600000000000L),
    content="1599362521489",
  )
  f.seed(42)
  json_inspect(
    f.date_soon(days=10, ref_date=1600000000000L),
    content="1600323603288",
  )
  f.seed(42)
  json_inspect(f.date_month(abbreviated=true, context=true), content="Jan")
  f.seed(42)
  json_inspect(f.date_weekday(abbreviated=true, context=true), content="Sat")
  f.seed(42)
  json_inspect(f.finance_account_number(length=12), content="397511086709")
  f.seed(42)
  json_inspect(
    f.finance_amount(min=5, max=50, decimals=4, symbol="€"),
    content="€21.8543",
  )
  f.seed(42)
  json_inspect(f.finance_bic(include_branch_code=true), content="JYTPCD52XXX")
  f.seed(42)
  json_inspect(
    f.finance_bitcoin_address(family="bech32", testnet=true),
    content="tb1dyrm552vmq0zu766ajfam5adgt7jl2m63yyta4p",
  )
  f.seed(42)
  json_inspect(
    f.finance_bitcoin_address(family="taproot"),
    content="bc1pdyrm552vmq0zu766ajfam5adgt7jl2m63yyta4pg4h2x9pajk6zsywmx37",
  )
  f.seed(42)
  json_inspect(
    f.finance_credit_card_number(issuer="visa"),
    content="4975110867099",
  )
  f.seed(42)
  json_inspect(
    f.finance_credit_card_number(issuer="63[7-9]#-####-####-###L"),
    content="6389-7511-0867-0981",
  )
  f.seed(42)
  json_inspect(f.finance_pin(length=6), content="397511")
  f.seed(42)
  json_inspect(f.finance_vat_number(country_code="ES"), content="ESV75110867")
  f.seed(42)
  json_inspect(@faker.multiple(_ => f.finance_vat_number(), count=40), content=[
    "FI97511086", "MT09821135", "FR9L123471550", "LT109983016", "FR4G092635519",
    "NL859010332B83", "EE518097108", "MT77031863", "BE0376841775", "NL540106359B03",
    "FRR7021986881", "SE588312488001", "HU42139357", "ESW2432065A", "EE921492672",
    "MT36650831", "BE1605261639", "CY31982685N", "DK08963378", "RO8018601", "LU01566272",
    "EL768650322", "SK3867554172", "ATU61999309", "FRYY823831596", "IT06915876732",
    "PL8895576778", "ESB50452500", "PT415726005", "IE7953724BW", "ATU98641125", "MT62975642",
    "ESN1008740E", "HR14366036586", "CZ60595364", "IE3991010CW", "LV03808216687",
    "PL2178943739", "RO47195838", "FI09039956",
  ])
  f.seed(42)
  json_inspect(
    f.finance_iban(country_code="DE", formatted=true),
    content="DE69 9500 1670 8002 5210 05",
  )
  f.seed(42)
  json_inspect(
    f.git_commit_date(ref_date=1600000000000L),
    content="Sat Sep 12 21:25:59 2020 +1100",
  )
  f.seed(42)
  json_inspect(
    f.git_commit_entry(merge=true, eol="LF", ref_date=1600000000000L),
    content="commit 8ead331ddf0fc4446b96d368ab4bd1d31efb62f9\nMerge: 2a0e5e6 bc4fbed\nAuthor: Ashton_Hand35 <Ashton_Hand@gmail.com>\nDate: Sun Sep 13 06:58:41 2020 -0700\n\n    back up redundant panel\n",
  )
  f.seed(42)
  json_inspect(f.git_commit_sha(length=7), content="8ead331")
  f.seed(42)
  json_inspect(
    f.image_data_uri(width=10, height=20, color="red", base64=true),
    content="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgYmFzZVByb2ZpbGU9ImZ1bGwiIHdpZHRoPSIxMCIgaGVpZ2h0PSIyMCI+PHJlY3Qgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0icmVkIi8+PHRleHQgeD0iNSIgeT0iMTAiIGZvbnQtc2l6ZT0iMjAiIGFsaWdubWVudC1iYXNlbGluZT0ibWlkZGxlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmaWxsPSJ3aGl0ZSI+MTB4MjA8L3RleHQ+PC9zdmc+",
  )
  f.seed(42)
  json_inspect(
    f.image_url(width=100, height=50),
    content="https://picsum.photos/seed/WJB993R/100/50",
  )
  f.seed(42)
  json_inspect(
    f.image_url_picsum_photos(width=100, height=50, grayscale=true, blur=3),
    content="https://picsum.photos/seed/WJB993R/100/50?grayscale&blur=3",
  )
  f.seed(42)
  json_inspect(
    f.image_person_portrait(size=128, sex=Female),
    content="https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/128/37.jpg",
  )
  f.seed(42)
  json_inspect(
    f.internet_display_name(first_name="Jeanne", last_name="Doe"),
    content="Jeanne.Doe95",
  )
  f.seed(42)
  json_inspect(
    f.internet_email(
      first_name="Jeanne",
      last_name="Doe",
      provider="example.dev",
      allow_special_characters=true,
    ),
    content="Jeanne.Doe@example.dev",
  )
  f.seed(42)
  json_inspect(
    f.internet_example_email(
      first_name="Jeanne",
      last_name="Doe",
      allow_special_characters=true,
    ),
    content="Jeanne_Doe@example.net",
  )
  f.seed(42)
  json_inspect(f.internet_emoji(types=["food", "nature"]), content="🫐")
  f.seed(42)
  json_inspect(
    f.internet_http_status_code(types=["clientError", "serverError"]),
    content=431,
  )
  f.seed(42)
  json_inspect(f.internet_ipv4(network="private-a"), content="10.95.225.220")
  f.seed(42)
  json_inspect(f.internet_ipv4(network="test-net-2"), content="198.51.100.95")
  f.seed(42)
  json_inspect(f.internet_ipv4(network="multicast"), content="229.254.29.199")
  f.seed(42)
  json_inspect(
    f.internet_jwt(
      header={ "x": 1 },
      payload={ "iss": "me" },
      ref_date=1600000000000L,
    ),
    content="eyJ4IjoxfQ.eyJpc3MiOiJtZSJ9.WJB993RBH1YPdbbiwqiB8imsMcvA2Ba4WXOi6Gr7u2UgFjwxbYMWTBV5c2kogPmh",
  )
  f.seed(42)
  json_inspect(f.internet_mac(separator="-"), content="5f-b9-22-0d-9b-0f")
  f.seed(42)
  json_inspect(
    f.internet_password(length=20, prefix="Ab1!"),
    content="Ab1!DfYsZdp522RJCLk3",
  )
  f.seed(42)
  json_inspect(
    f.internet_url(protocol="http", append_slash=true),
    content="http://hospitable-unit.net/",
  )
  f.seed(42)
  json_inspect(
    f.internet_username(first_name="Ольга", last_name="Васильев"),
    content="Olukga.Vasilukev",
  )
  f.seed(42)
  json_inspect(
    f.internet_username(first_name="Zoë", last_name="Núñez"),
    content="Zoe.Nunez",
  )
  f.seed(42)
  json_inspect(f.location_country_code(variant="alpha-3"), content="GUY")
  f.seed(42)
  json_inspect(f.location_country_code(variant="numeric"), content="328")
  f.seed(42)
  json_inspect(f.location_direction(abbreviated=true), content="S")
  f.seed(42)
  json_inspect(f.location_cardinal_direction(abbreviated=true), content="E")
  f.seed(42)
  json_inspect(f.location_ordinal_direction(abbreviated=true), content="NW")
  f.seed(42)
  json_inspect(f.location_state(abbreviated=true), content="ME")
  f.seed(42)
  json_inspect(
    f.location_latitude(min=-10, max=10, precision=6),
    content=-2.509198,
  )
  f.seed(42)
  json_inspect(
    f.location_longitude(min=-10, max=10, precision=2),
    content=-2.51,
  )
  f.seed(42)
  json_inspect(
    round_coordinate(
      f.location_nearby_gps_coordinate(
        origin=(33.0, -170.0),
        radius=1000,
        metric=true,
      ),
    ),
    content=[39.037461412, -176.002611442],
  )
  f.seed(42)
  json_inspect(f.location_zip_code(format="####-??"), content="3975-EE")
  f.seed(42)
  json_inspect(
    f.lorem_lines(count=3),
    content="Virga synagoga patruus armarium armarium.\nUsitas paulatim suggero.\nVolubilis tristis benevolentia.",
  )
  f.seed(42)
  json_inspect(
    f.lorem_paragraphs(count=2, separator="|"),
    content="Virga synagoga patruus armarium armarium. Usitas paulatim suggero. Volubilis tristis benevolentia.|Auctus cognomen esse custodia. Perspiciatis apud claro copiose defleo. Aveho doloribus omnis adipiscor pectus assumenda advoco vinum vociferor.",
  )
  f.seed(42)
  json_inspect(
    f.lorem_sentence(count=5),
    content="Corrupti virga synagoga patruus armarium.",
  )
  f.seed(42)
  json_inspect(
    f.lorem_sentences(count=3, separator="|"),
    content="Virga synagoga patruus armarium armarium.|Usitas paulatim suggero.|Volubilis tristis benevolentia.",
  )
  f.seed(42)
  json_inspect(f.lorem_slug(count=4), content="corrupti-virga-synagoga-patruus")
  f.seed(42)
  json_inspect(
    f.lorem_word(min_length=5, max_length=7, strategy=Closest),
    content="cornu",
  )
  f.seed(42)
  json_inspect(f.person_full_name(last_name="Doe"), content="Nikita Doe")
  f.seed(42)
  json_inspect(f.person_last_name(sex=Male), content="Wilkinson")
  f.seed(42)
  json_inspect(f.person_middle_name(sex=Female), content="Venus")
  f.seed(42)
  json_inspect(f.person_prefix(sex=Male), content="Mr.")
  f.seed(42)
  json_inspect(f.phone_number(style="international"), content="+14976110867")
  f.seed(42)
  json_inspect(f.phone_number(style="national"), content="(497) 611-0867")
  f.seed(42)
  json_inspect(f.roman_numeral(min=10, max=100), content="XLIV")
  f.seed(42)
  json_inspect(f.number_hex(min=10, max=1000), content="17d")
  f.seed(42)
  json_inspect(f.number_binary(min=10, max=1000), content="101111101")
  f.seed(42)
  json_inspect(f.number_octal(min=10, max=1000), content="575")
  f.seed(42)
  json_inspect(f.int64(), content="3373557479352566")
  f.seed(42)
  json_inspect(f.float(min=0, max=10, multiple_of=0.25), content=3.75)
  f.seed(42)
  json_inspect(f.boolean(probability=0.8), content=true)
  f.seed(42)
  json_inspect(
    f.system_common_file_name(extension="txt"),
    content="unnaturally_dreamily.txt",
  )
  f.seed(42)
  json_inspect(
    f.system_cron(include_year=true, include_non_standard=true),
    content="* * ? 8 ? *",
  )
  f.seed(42)
  json_inspect(f.system_file_ext(mime_type="application/json"), content="json")
  f.seed(42)
  json_inspect(
    f.system_file_name(extension_count=2),
    content="unnaturally_dreamily.mar.xlw",
  )
  f.seed(42)
  json_inspect(
    f.system_network_interface(interface_type="wl", schema="mac"),
    content="wlx5fb9220d9b0f",
  )
  f.seed(42)
  json_inspect(
    f.word_adjective(min_length=5, max_length=7, strategy=Shortest),
    content="impish",
  )
  f.seed(42)
  json_inspect(
    f.word_sample(min_length=4, max_length=4, strategy=AnyLength),
    content="even",
  )
  f.seed(42)
  json_inspect(f.word_words(count=5), content="bleakly custody gee psst why")
  f.seed(42)
  json_inspect(
    f.replace_credit_card_symbols(pattern="1234-[4-9]-##!!-L"),
    content="1234-6-9763-7",
  )
  f.seed(42)
  json_inspect(f.array_samples([1, 2, 3, 4, 5], count=3), content=[2, 5, 4])
  f.seed(42)
  json_inspect(f.unique_array(["a", "b", "c", "b", "d", "e"], 3), content=[
    "a", "e", "c",
  ])
  f.seed(42)
  json_inspect(f.unique_array(["a", "b"], 5), content=["b", "a"])
  f.seed(42)
  json_inspect(@faker.unique_array_with(() => f.int(max=5), 4), content=[
    2, 5, 4, 3,
  ])
  f.seed(42)
  json_inspect(@faker.unique_array_with(() => f.int(max=2), 5), content=[
    1, 2, 0,
  ])
  f.seed(42)
  json_inspect(@faker.multiple(i => f.int(max=9) * 10 + i, count=4), content=[
    30, 91, 72, 53,
  ])
  f.seed(42)
  json_inspect(f.range_to_number(Range(min=1, max=10)), content=4)
  f.seed(42)
  json_inspect(
    @faker.slugify("Héllo Wörld ß ﬁne ½.txt"),
    content="Hello-World--fine-12.txt",
  )
  f.seed(42)
  json_inspect(
    @faker.slugify("Ｆｕｌｌ　ｗｉｄｔｈ ⅷ ㎏ ñandú"),
    content="Full-width-viii-kg-nandu",
  )
}

///|
test "upstream parity seed 12345" {
  let f = @faker.Faker(seed=12345)
  f.seed(12345)
  json_inspect(
    f.airline_flight_number(length=3, add_leading_zeros=true),
    content="0931",
  )
  f.seed(12345)
  json_inspect(
    f.airline_record_locator(allow_numerics=true, allow_visually_similar=true),
    content="XB67KL",
  )
  f.seed(12345)
  json_inspect(f.airline_seat(aircraft_type="widebody"), content="56D")
  f.seed(12345)
  json_inspect(
    f.alphanumeric(length=12, casing=Lower, exclude="abc1"),
    content="xe67mnyorory",
  )
  f.seed(12345)
  json_inspect(f.binary(length=8, prefix="b"), content="b10001111")
  f.seed(12345)
  json_inspect(f.octal(length=6, prefix="0o"), content="0o721144")
  f.seed(12345)
  json_inspect(
    f.hexadecimal(length=10, prefix="#", casing=Upper),
    content="#E644CDFEAE",
  )
  f.seed(12345)
  json_inspect(f.numeric(length=10, exclude="13579"), content="8202448666")
  f.seed(12345)
  json_inspect(f.nanoid(length=10), content="jcAEEX6ESI")
  f.seed(12345)
  json_inspect(f.from_characters("abc", length=10), content="caaabbcbcb")
  f.seed(12345)
  json_inspect(
    f.color_rgb(include_alpha=true, prefix="#", casing=Upper),
    content="#E644CDFE",
  )
  f.seed(12345)
  json_inspect(f.color_hsl(include_alpha=true), content=[335, 0.31, 0.18, 0.2])
  f.seed(12345)
  json_inspect(
    @faker.color_css(
      f.color_by_css_color_space(),
      model="color",
      space="display-p3",
    ),
    content="color(display-p3 0.9297 0.3164 0.1839)",
  )
  f.seed(12345)
  json_inspect(
    f.commerce_isbn(variant=10, separator=" "),
    content="1 312 55967 5",
  )
  f.seed(12345)
  json_inspect(
    f.commerce_price(min=10, max=500, decimals=3, symbol="$"),
    content="$465.519",
  )
  f.seed(12345)
  json_inspect(f.commerce_upc(prefix="01234"), content="012349312553")
  f.seed(12345)
  json_inspect(f.date_anytime(ref_date=1600000000000L), content="1627096746207")
  f.seed(12345)
  json_inspect(f.date_betweens(1500000000000L, 1600000000000L, count=4), content=[
    "1518391881167", "1520456027855", "1531637555458", "1592961609282",
  ])
  f.seed(12345)
  json_inspect(
    f.date_birthdate(min=18, max=65, mode="age", ref_date=1600000000000L),
    content="925311016083",
  )
  f.seed(12345)
  json_inspect(
    f.date_future(years=5, min_years=2, ref_date=1600000000000L),
    content="1751101438210",
  )
  f.seed(12345)
  json_inspect(
    f.date_past(years=5, min_years=2, ref_date=1600000000000L),
    content="1530176637210",
  )
  f.seed(12345)
  json_inspect(
    f.date_recent(days=10, min_days=3, ref_date=1600000000000L),
    content="1599698230884",
  )
  f.seed(12345)
  json_inspect(
    f.date_soon(days=10, ref_date=1600000000000L),
    content="1600803188375",
  )
  f.seed(12345)
  json_inspect(f.date_month(abbreviated=true, context=true), content="Sep")
  f.seed(12345)
  json_inspect(f.date_weekday(abbreviated=true, context=true), content="Wed")
  f.seed(12345)
  json_inspect(f.finance_account_number(length=12), content="931255967679")
  f.seed(12345)
  json_inspect(
    f.finance_amount(min=5, max=50, decimals=4, symbol="€"),
    content="€46.8328",
  )
  f.seed(12345)
  json_inspect(f.finance_bic(include_branch_code=true), content="YIEFMGLYXXX")
  f.seed(12345)
  json_inspect(
    f.finance_bitcoin_address(family="bech32", testnet=true),
    content="tb1xc67lmynrnry04aptvyrnqgcgrzpt60tw0hjm2w",
  )
  f.seed(12345)
  json_inspect(
    f.finance_bitcoin_address(family="taproot"),
    content="bc1pxc67lmynrnry04aptvyrnqgcgrzpt60tw0hjm2wrujt489ggq6k6sxm5he",
  )
  f.seed(12345)
  json_inspect(
    f.finance_credit_card_number(issuer="visa"),
    content="4312-5596-7679-0124",
  )
  f.seed(12345)
  json_inspect(
    f.finance_credit_card_number(issuer="63[7-9]#-####-####-###L"),
    content="6393-1255-9676-7902",
  )
  f.seed(12345)
  json_inspect(f.finance_pin(length=6), content="931255")
  f.seed(12345)
  json_inspect(f.finance_vat_number(country_code="ES"), content="ESP1255967G")
  f.seed(12345)
  json_inspect(@faker.multiple(_ => f.finance_vat_number(), count=40), content=[
    "SI31255967", "LU79012688", "SK7674347967", "CZ89045508", "MT85802244", "MT15179614",
    "FI89335116", "PL5968437522", "PL4995273423", "LU37789193", "PT901260156", "RO6729409",
    "LU56495056", "SI42044067", "MT40971363", "CZ82544862", "BE0989054034", "LT687478219",
    "RO78890", "ATU39117074", "ATU77107224", "DK58348305", "HR73845646273", "DE221721646",
    "LU32210022", "LT877331915", "PT471798324", "FRE2677374714", "PT810734798", "CY66587034A",
    "LT633451915", "HU12726292", "SE913691049001", "DE603626264", "EE292813954",
    "ATU63203000", "ESF29265461", "PL1620666834", "LT911179415", "EL177937917",
  ])
  f.seed(12345)
  json_inspect(
    f.finance_iban(country_code="DE", formatted=true),
    content="DE21 3006 9767 0006 8773 47",
  )
  f.seed(12345)
  json_inspect(
    f.git_commit_date(ref_date=1600000000000L),
    content="Sun Sep 13 10:45:17 2020 -0400",
  )
  f.seed(12345)
  json_inspect(
    f.git_commit_entry(merge=true, eol="LF", ref_date=1600000000000L),
    content="commit e644cdfeaeaf026ebdffefa79afeb30bd0abd1da\nMerge: cbb245a af3b3ae\nAuthor: Jamar_Veum18 <Jamar_Veum@yahoo.com>\nDate: Sun Sep 13 09:45:58 2020 +0000\n\n    generate optical interface\n",
  )
  f.seed(12345)
  json_inspect(f.git_commit_sha(length=7), content="e644cdf")
  f.seed(12345)
  json_inspect(
    f.image_data_uri(width=10, height=20, color="red", base64=true),
    content="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgYmFzZVByb2ZpbGU9ImZ1bGwiIHdpZHRoPSIxMCIgaGVpZ2h0PSIyMCI+PHJlY3Qgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0icmVkIi8+PHRleHQgeD0iNSIgeT0iMTAiIGZvbnQtc2l6ZT0iMjAiIGFsaWdubWVudC1iYXNlbGluZT0ibWlkZGxlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmaWxsPSJ3aGl0ZSI+MTB4MjA8L3RleHQ+PC9zdmc+",
  )
  f.seed(12345)
  json_inspect(
    f.image_url(width=100, height=50),
    content="https://picsum.photos/seed/jbczAXEKEK/100/50",
  )
  f.seed(12345)
  json_inspect(
    f.image_url_picsum_photos(width=100, height=50, grayscale=true, blur=3),
    content="https://picsum.photos/seed/jbczAXEKEK/100/50?grayscale&blur=3",
  )
  f.seed(12345)
  json_inspect(
    f.image_person_portrait(size=128, sex=Female),
    content="https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/128/92.jpg",
  )
  f.seed(12345)
  json_inspect(
    f.internet_display_name(first_name="Jeanne", last_name="Doe"),
    content="Jeanne31",
  )
  f.seed(12345)
  json_inspect(
    f.internet_email(
      first_name="Jeanne",
      last_name="Doe",
      provider="example.dev",
      allow_special_characters=true,
    ),
    content="Jeanne_Doe31@example.dev",
  )
  f.seed(12345)
  json_inspect(
    f.internet_example_email(
      first_name="Jeanne",
      last_name="Doe",
      allow_special_characters=true,
    ),
    content="Jeanne.Doe18@example.org",
  )
  f.seed(12345)
  json_inspect(f.internet_emoji(types=["food", "nature"]), content="🐗")
  f.seed(12345)
  json_inspect(
    f.internet_http_status_code(types=["clientError", "serverError"]),
    content=503,
  )
  f.seed(12345)
  json_inspect(f.internet_ipv4(network="private-a"), content="10.237.251.81")
  f.seed(12345)
  json_inspect(f.internet_ipv4(network="test-net-2"), content="198.51.100.237")
  f.seed(12345)
  json_inspect(f.internet_ipv4(network="multicast"), content="238.223.181.31")
  f.seed(12345)
  json_inspect(
    f.internet_jwt(
      header={ "x": 1 },
      payload={ "iss": "me" },
      ref_date=1600000000000L,
    ),
    content="eyJ4IjoxfQ.eyJpc3MiOiJtZSJ9.jbczAXEKEKX06iEOSXIDIskrJZFNa1NU1uwA3TJOvO5dgtsHbwaLVB9unQUnjzb7",
  )
  f.seed(12345)
  json_inspect(f.internet_mac(separator="-"), content="e5-23-99-fa-ba-bf")
  f.seed(12345)
  json_inspect(
    f.internet_password(length=20, prefix="Ab1!"),
    content="Ab1!y24VY_h_h_mseeMJ",
  )
  f.seed(12345)
  json_inspect(
    f.internet_url(protocol="http", append_slash=true),
    content="http://vengeful-eyeliner.com/",
  )
  f.seed(12345)
  json_inspect(
    f.internet_username(first_name="Ольга", last_name="Васильев"),
    content="Olukga_Vasilukev31",
  )
  f.seed(12345)
  json_inspect(
    f.internet_username(first_name="Zoë", last_name="Núñez"),
    content="Zoe_Nunez31",
  )
  f.seed(12345)
  json_inspect(f.location_country_code(variant="alpha-3"), content="UMI")
  f.seed(12345)
  json_inspect(f.location_country_code(variant="numeric"), content="581")
  f.seed(12345)
  json_inspect(f.location_direction(abbreviated=true), content="SW")
  f.seed(12345)
  json_inspect(f.location_cardinal_direction(abbreviated=true), content="W")
  f.seed(12345)
  json_inspect(f.location_ordinal_direction(abbreviated=true), content="SW")
  f.seed(12345)
  json_inspect(f.location_state(abbreviated=true), content="WA")
  f.seed(12345)
  json_inspect(
    f.location_latitude(min=-10, max=10, precision=6),
    content=8.592322,
  )
  f.seed(12345)
  json_inspect(f.location_longitude(min=-10, max=10, precision=2), content=8.6)
  f.seed(12345)
  json_inspect(
    round_coordinate(
      f.location_nearby_gps_coordinate(
        origin=(33.0, -170.0),
        radius=1000,
        metric=true,
      ),
    ),
    content=[31.78752795, -167.439417417],
  )
  f.seed(12345)
  json_inspect(f.location_zip_code(format="####-??"), content="9312-OP")
  f.seed(12345)
  json_inspect(
    f.lorem_lines(count=3),
    content="Comes auctus bardus minus pariatur vobis solitudo tamquam solitudo tametsi.\nAbsorbeo amissio coaegresco sollicito tollo uter vobis supra sapiente sunt.\nComparo decerno suspendo vulgus spiculum textilis.",
  )
  f.seed(12345)
  json_inspect(
    f.lorem_paragraphs(count=2, separator="|"),
    content="Comes auctus bardus minus pariatur vobis solitudo tamquam solitudo tametsi. Absorbeo amissio coaegresco sollicito tollo uter vobis supra sapiente sunt. Comparo decerno suspendo vulgus spiculum textilis.|Acquiro thesaurus venio acidus. Est patior admoneo vehemens suscipit toties. Tollo allatus blanditiis caute delibero degenero sui.",
  )
  f.seed(12345)
  json_inspect(
    f.lorem_sentence(count=5),
    content="Vetus comes auctus bardus minus.",
  )
  f.seed(12345)
  json_inspect(
    f.lorem_sentences(count=3, separator="|"),
    content="Comes auctus bardus minus pariatur vobis solitudo tamquam solitudo tametsi.|Absorbeo amissio coaegresco sollicito tollo uter vobis supra sapiente sunt.|Comparo decerno suspendo vulgus spiculum textilis.",
  )
  f.seed(12345)
  json_inspect(f.lorem_slug(count=4), content="vetus-comes-auctus-bardus")
  f.seed(12345)
  json_inspect(
    f.lorem_word(min_length=5, max_length=7, strategy=Closest),
    content="vester",
  )
  f.seed(12345)
  json_inspect(f.person_full_name(last_name="Doe"), content="Colton Doe")
  f.seed(12345)
  json_inspect(f.person_last_name(sex=Male), content="Hall")
  f.seed(12345)
  json_inspect(f.person_middle_name(sex=Female), content="Harley")
  f.seed(12345)
  json_inspect(f.person_prefix(sex=Male), content="Dr.")
  f.seed(12345)
  json_inspect(f.phone_number(style="international"), content="+19313559676")
  f.seed(12345)
  json_inspect(f.phone_number(style="national"), content="(931) 355-9676")
  f.seed(12345)
  json_inspect(f.roman_numeral(min=10, max=100), content="XCIV")
  f.seed(12345)
  json_inspect(f.number_hex(min=10, max=1000), content="3a3")
  f.seed(12345)
  json_inspect(f.number_binary(min=10, max=1000), content="1110100011")
  f.seed(12345)
  json_inspect(f.number_octal(min=10, max=1000), content="1643")
  f.seed(12345)
  json_inspect(f.int64(), content="8373237378417847")
  f.seed(12345)
  json_inspect(f.float(min=0, max=10, multiple_of=0.25), content=9.5)
  f.seed(12345)
  json_inspect(f.boolean(probability=0.8), content=false)
  f.seed(12345)
  json_inspect(
    f.system_common_file_name(extension="txt"),
    content="quarrelsome_gracefully_secondary.txt",
  )
  f.seed(12345)
  json_inspect(
    f.system_cron(include_year=true, include_non_standard=true),
    content="* * * * ? 2095",
  )
  f.seed(12345)
  json_inspect(f.system_file_ext(mime_type="application/json"), content="map")
  f.seed(12345)
  json_inspect(
    f.system_file_name(extension_count=2),
    content="quarrelsome_gracefully_secondary.php.pps",
  )
  f.seed(12345)
  json_inspect(
    f.system_network_interface(interface_type="wl", schema="mac"),
    content="wlxe52399fababf",
  )
  f.seed(12345)
  json_inspect(
    f.word_adjective(min_length=5, max_length=7, strategy=Shortest),
    content="warlike",
  )
  f.seed(12345)
  json_inspect(
    f.word_sample(min_length=4, max_length=4, strategy=AnyLength),
    content="pish",
  )
  f.seed(12345)
  json_inspect(
    f.word_words(count=5),
    content="oof cheerfully proper regular make",
  )
  f.seed(12345)
  json_inspect(
    f.replace_credit_card_symbols(pattern="1234-[4-9]-##!!-L"),
    content="1234-9-3136-6",
  )
  f.seed(12345)
  json_inspect(f.array_samples([1, 2, 3, 4, 5], count=3), content=[5, 2, 1])
  f.seed(12345)
  json_inspect(f.unique_array(["a", "b", "c", "b", "d", "e"], 3), content=[
    "d", "c", "a",
  ])
  f.seed(12345)
  json_inspect(f.unique_array(["a", "b"], 5), content=["a", "b"])
  f.seed(12345)
  json_inspect(@faker.unique_array_with(() => f.int(max=5), 4), content=[
    5, 1, 3, 4,
  ])
  f.seed(12345)
  json_inspect(@faker.unique_array_with(() => f.int(max=2), 5), content=[
    2, 0, 1,
  ])
  f.seed(12345)
  json_inspect(@faker.multiple(i => f.int(max=9) * 10 + i, count=4), content=[
    90, 31, 12, 23,
  ])
  f.seed(12345)
  json_inspect(f.range_to_number(Range(min=1, max=10)), content=10)
  f.seed(12345)
  json_inspect(
    @faker.slugify("Héllo Wörld ß ﬁne ½.txt"),
    content="Hello-World--fine-12.txt",
  )
  f.seed(12345)
  json_inspect(
    @faker.slugify("Ｆｕｌｌ　ｗｉｄｔｈ ⅷ ㎏ ñandú"),
    content="Full-width-viii-kg-nandu",
  )
}

///|
test "upstream parity seed 4294967295" {
  let f = @faker.Faker(seed=4294967295)
  f.seed(4294967295)
  json_inspect(
    f.airline_flight_number(length=3, add_leading_zeros=true),
    content="0197",
  )
  f.seed(4294967295)
  json_inspect(
    f.airline_record_locator(allow_numerics=true, allow_visually_similar=true),
    content="3WSS0Y",
  )
  f.seed(4294967295)
  json_inspect(f.airline_seat(aircraft_type="widebody"), content="6K")
  f.seed(4294967295)
  json_inspect(
    f.alphanumeric(length=12, casing=Lower, exclude="abc1"),
    content="4xts0zm5xlzh",
  )
  f.seed(4294967295)
  json_inspect(f.binary(length=8, prefix="b"), content="b01110110")
  f.seed(4294967295)
  json_inspect(f.octal(length=6, prefix="0o"), content="0o076607")
  f.seed(4294967295)
  json_inspect(
    f.hexadecimal(length=10, prefix="#", casing=Upper),
    content="#2EBB0FD3EC",
  )
  f.seed(4294967295)
  json_inspect(f.numeric(length=10, exclude="13579"), content="0866084084")
  f.seed(4294967295)
  json_inspect(f.nanoid(length=10), content="UMY9y_bPuZ")
  f.seed(4294967295)
  json_inspect(f.from_characters("abc", length=10), content="acccacbacb")
  f.seed(4294967295)
  json_inspect(
    f.color_rgb(include_alpha=true, prefix="#", casing=Upper),
    content="#2EBB0FD3",
  )
  f.seed(4294967295)
  json_inspect(f.color_hsl(include_alpha=true), content=[35, 0.92, 0.79, 0.78])
  f.seed(4294967295)
  json_inspect(
    @faker.color_css(
      f.color_by_css_color_space(),
      model="color",
      space="display-p3",
    ),
    content="color(display-p3 0.0976 0.9124 0.7891)",
  )
  f.seed(4294967295)
  json_inspect(
    f.commerce_isbn(variant=10, separator=" "),
    content="0 9770951 9 3",
  )
  f.seed(4294967295)
  json_inspect(
    f.commerce_price(min=10, max=500, decimals=3, symbol="$"),
    content="$57.835",
  )
  f.seed(4294967295)
  json_inspect(f.commerce_upc(prefix="01234"), content="012340977096")
  f.seed(4294967295)
  json_inspect(f.date_anytime(ref_date=1600000000000L), content="1574621847332")
  f.seed(4294967295)
  json_inspect(f.date_betweens(1500000000000L, 1600000000000L, count=4), content=[
    "1509763202899", "1578000359812", "1578903530185", "1591238284531",
  ])
  f.seed(4294967295)
  json_inspect(
    f.date_birthdate(min=18, max=65, mode="age", ref_date=1600000000000L),
    content="-334877274535",
  )
  f.seed(4294967295)
  json_inspect(
    f.date_future(years=5, min_years=2, ref_date=1600000000000L),
    content="1672317207308",
  )
  f.seed(4294967295)
  json_inspect(
    f.date_past(years=5, min_years=2, ref_date=1600000000000L),
    content="1451392406308",
  )
  f.seed(4294967295)
  json_inspect(
    f.date_recent(days=10, min_days=3, ref_date=1600000000000L),
    content="1599195047753",
  )
  f.seed(4294967295)
  json_inspect(
    f.date_soon(days=10, ref_date=1600000000000L),
    content="1600084354975",
  )
  f.seed(4294967295)
  json_inspect(f.date_month(abbreviated=true, context=true), content="Aug")
  f.seed(4294967295)
  json_inspect(f.date_weekday(abbreviated=true, context=true), content="Fri")
  f.seed(4294967295)
  json_inspect(f.finance_account_number(length=12), content="097709519594")
  f.seed(4294967295)
  json_inspect(
    f.finance_amount(min=5, max=50, decimals=4, symbol="€"),
    content="€9.3934",
  )
  f.seed(4294967295)
  json_inspect(f.finance_bic(include_branch_code=true), content="CXUUAIYLWJZ")
  f.seed(4294967295)
  json_inspect(
    f.finance_bitcoin_address(family="bech32", testnet=true),
    content="tb14xts0zl5xkzfc6xuwh7z8msl2mjw4guhtl02dnd",
  )
  f.seed(4294967295)
  json_inspect(
    f.finance_bitcoin_address(family="taproot"),
    content="bc1p4xts0zl5xkzfc6xuwh7z8msl2mjw4guhtl02dnd64hyp8drt9pkyt6mtef",
  )
  f.seed(4294967295)
  json_inspect(
    f.finance_credit_card_number(issuer="visa"),
    content="4977095195942",
  )
  f.seed(4294967295)
  json_inspect(
    f.finance_credit_card_number(issuer="63[7-9]#-####-####-###L"),
    content="6379-7709-5195-9434",
  )
  f.seed(4294967295)
  json_inspect(f.finance_pin(length=6), content="097709")
  f.seed(4294967295)
  json_inspect(f.finance_vat_number(country_code="ES"), content="ESV77095195")
  f.seed(4294967295)
  json_inspect(@faker.multiple(_ => f.finance_vat_number(), count=40), content=[
    "BG7709519594", "EL198842926", "NL065814847B60", "BE0631049623", "NL265971684B45",
    "CY40460025L", "ESH08995840", "ESN7758868J", "HU45164571", "DK07042245", "LU89622275",
    "ESC24113070", "HU27354031", "IE6741463RW", "BE0312407477", "SK4921508766", "PL1269663472",
    "SE001697978101", "SK5484525023", "DK41881575", "DE799717159", "LT528013614",
    "ESD28218530", "MT56751479", "RO7698056962", "SE510354733901", "LU72817354",
    "MT02147944", "RO9338960", "LT750209615", "BE0820166977", "EE328506076", "LV78134493492",
    "SE222302254201", "SE035629965701", "SK5438198261", "EL862556349", "SI34459737",
    "EL771319397", "FI92279769",
  ])
  f.seed(4294967295)
  json_inspect(
    f.finance_iban(country_code="DE", formatted=true),
    content="DE98 0805 0594 1840 3705 81",
  )
  f.seed(4294967295)
  json_inspect(
    f.git_commit_date(ref_date=1600000000000L),
    content="Sat Sep 12 14:47:15 2020 +1000",
  )
  f.seed(4294967295)
  json_inspect(
    f.git_commit_entry(merge=true, eol="LF", ref_date=1600000000000L),
    content="commit 2ebb0fd3ecf973ecda4f5dbc0dbd29cabd008e74\nMerge: 2aef48a b6fcfb3\nAuthor: Gino Conn <Gino_Conn45@gmail.com>\nDate: Sat Sep 12 23:55:46 2020 +0500\n\n    bypass solid state transmitter\n",
  )
  f.seed(4294967295)
  json_inspect(f.git_commit_sha(length=7), content="2ebb0fd")
  f.seed(4294967295)
  json_inspect(
    f.image_data_uri(width=10, height=20, color="red", base64=true),
    content="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgYmFzZVByb2ZpbGU9ImZ1bGwiIHdpZHRoPSIxMCIgaGVpZ2h0PSIyMCI+PHJlY3Qgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0icmVkIi8+PHRleHQgeD0iNSIgeT0iMTAiIGZvbnQtc2l6ZT0iMjAiIGFsaWdubWVudC1iYXNlbGluZT0ibWlkZGxlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmaWxsPSJ3aGl0ZSI+MTB4MjA8L3RleHQ+PC9zdmc+",
  )
  f.seed(4294967295)
  json_inspect(
    f.image_url(width=100, height=50),
    content="https://picsum.photos/seed/UMM1Y/100/50",
  )
  f.seed(4294967295)
  json_inspect(
    f.image_url_picsum_photos(width=100, height=50, grayscale=true, blur=3),
    content="https://picsum.photos/seed/UMM1Y/100/50?grayscale&blur=3",
  )
  f.seed(4294967295)
  json_inspect(
    f.image_person_portrait(size=128, sex=Female),
    content="https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/128/9.jpg",
  )
  f.seed(4294967295)
  json_inspect(
    f.internet_display_name(first_name="Jeanne", last_name="Doe"),
    content="Jeanne.Doe91",
  )
  f.seed(4294967295)
  json_inspect(
    f.internet_email(
      first_name="Jeanne",
      last_name="Doe",
      provider="example.dev",
      allow_special_characters=true,
    ),
    content="Jeanne.Doe@example.dev",
  )
  f.seed(4294967295)
  json_inspect(
    f.internet_example_email(
      first_name="Jeanne",
      last_name="Doe",
      allow_special_characters=true,
    ),
    content="Jeanne_Doe@example.com",
  )
  f.seed(4294967295)
  json_inspect(f.internet_emoji(types=["food", "nature"]), content="🧇")
  f.seed(4294967295)
  json_inspect(
    f.internet_http_status_code(types=["clientError", "serverError"]),
    content=429,
  )
  f.seed(4294967295)
  json_inspect(f.internet_ipv4(network="private-a"), content="10.24.254.105")
  f.seed(4294967295)
  json_inspect(f.internet_ipv4(network="test-net-2"), content="198.51.100.24")
  f.seed(4294967295)
  json_inspect(f.internet_ipv4(network="multicast"), content="225.143.230.154")
  f.seed(4294967295)
  json_inspect(
    f.internet_jwt(
      header={ "x": 1 },
      payload={ "iss": "me" },
      ref_date=1600000000000L,
    ),
    content="eyJ4IjoxfQ.eyJpc3MiOiJtZSJ9.UMM1YA9UyZpkbVPTucZfCMz1BvS6rOtMA02mDlb5uXGdnKNgGyXN9CNprv8q4rD6",
  )
  f.seed(4294967295)
  json_inspect(f.internet_mac(separator="-"), content="1e-cc-0f-92-e8-f6")
  f.seed(4294967295)
  json_inspect(
    f.internet_password(length=20, prefix="Ab1!"),
    content="Ab1!wkkYwUH2youO48jX",
  )
  f.seed(4294967295)
  json_inspect(
    f.internet_url(protocol="http", append_slash=true),
    content="http://busy-thyme.net/",
  )
  f.seed(4294967295)
  json_inspect(
    f.internet_username(first_name="Ольга", last_name="Васильев"),
    content="Olukga.Vasilukev",
  )
  f.seed(4294967295)
  json_inspect(
    f.internet_username(first_name="Zoë", last_name="Núñez"),
    content="Zoe.Nunez",
  )
  f.seed(4294967295)
  json_inspect(f.location_country_code(variant="alpha-3"), content="BEN")
  f.seed(4294967295)
  json_inspect(f.location_country_code(variant="numeric"), content="204")
  f.seed(4294967295)
  json_inspect(f.location_direction(abbreviated=true), content="N")
  f.seed(4294967295)
  json_inspect(f.location_cardinal_direction(abbreviated=true), content="N")
  f.seed(4294967295)
  json_inspect(f.location_ordinal_direction(abbreviated=true), content="NE")
  f.seed(4294967295)
  json_inspect(f.location_state(abbreviated=true), content="CA")
  f.seed(4294967295)
  json_inspect(
    f.location_latitude(min=-10, max=10, precision=6),
    content=-8.04736,
  )
  f.seed(4294967295)
  json_inspect(
    f.location_longitude(min=-10, max=10, precision=2),
    content=-8.05,
  )
  f.seed(4294967295)
  json_inspect(
    round_coordinate(
      f.location_nearby_gps_coordinate(
        origin=(33.0, -170.0),
        radius=1000,
        metric=true,
      ),
    ),
    content=[37.703559836, -163.31929691],
  )
  f.seed(4294967295)
  json_inspect(f.location_zip_code(format="####-??"), content="0977-AZ")
  f.seed(4294967295)
  json_inspect(
    f.lorem_lines(count=3),
    content="Verecundia testimonium termes.\nVolubilis optio arbustum.\nIste vorax cupio commodo attonbitus victoria tredecim valeo depraedor beatae.",
  )
  f.seed(4294967295)
  json_inspect(
    f.lorem_paragraphs(count=2, separator="|"),
    content="Verecundia testimonium termes. Volubilis optio arbustum. Iste vorax cupio commodo attonbitus victoria tredecim valeo depraedor beatae.|Caritas quae teres nisi addo pauci doloremque utrimque amissio decens. Demulceo tersus officiis abscido adflicto copiose saepe conscendo audax. Depopulo virtus stipes.",
  )
  f.seed(4294967295)
  json_inspect(
    f.lorem_sentence(count=5),
    content="Alter verecundia testimonium termes accommodo.",
  )
  f.seed(4294967295)
  json_inspect(
    f.lorem_sentences(count=3, separator="|"),
    content="Verecundia testimonium termes.|Volubilis optio arbustum.|Iste vorax cupio commodo attonbitus victoria tredecim valeo depraedor beatae.",
  )
  f.seed(4294967295)
  json_inspect(
    f.lorem_slug(count=4),
    content="alter-verecundia-testimonium-termes",
  )
  f.seed(4294967295)
  json_inspect(
    f.lorem_word(min_length=5, max_length=7, strategy=Closest),
    content="altus",
  )
  f.seed(4294967295)
  json_inspect(f.person_full_name(last_name="Doe"), content="Ms. Peyton Doe")
  f.seed(4294967295)
  json_inspect(f.person_last_name(sex=Male), content="Volkman")
  f.seed(4294967295)
  json_inspect(f.person_middle_name(sex=Female), content="Sydney")
  f.seed(4294967295)
  json_inspect(f.person_prefix(sex=Male), content="Mr.")
  f.seed(4294967295)
  json_inspect(f.phone_number(style="international"), content="+12978095195")
  f.seed(4294967295)
  json_inspect(f.phone_number(style="national"), content="(297) 809-5195")
  f.seed(4294967295)
  json_inspect(f.roman_numeral(min=10, max=100), content="XVIII")
  f.seed(4294967295)
  json_inspect(f.number_hex(min=10, max=1000), content="6a")
  f.seed(4294967295)
  json_inspect(f.number_binary(min=10, max=1000), content="1101010")
  f.seed(4294967295)
  json_inspect(f.number_octal(min=10, max=1000), content="152")
  f.seed(4294967295)
  json_inspect(f.int64(), content="879391138793732")
  f.seed(4294967295)
  json_inspect(f.float(min=0, max=10, multiple_of=0.25), content=1)
  f.seed(4294967295)
  json_inspect(f.boolean(probability=0.8), content=true)
  f.seed(4294967295)
  json_inspect(
    f.system_common_file_name(extension="txt"),
    content="amongst.txt",
  )
  f.seed(4294967295)
  json_inspect(
    f.system_cron(include_year=true, include_non_standard=true),
    content="5 * * * SAT 2047",
  )
  f.seed(4294967295)
  json_inspect(f.system_file_ext(mime_type="application/json"), content="json")
  f.seed(4294967295)
  json_inspect(f.system_file_name(extension_count=2), content="amongst.3gp.aac")
  f.seed(4294967295)
  json_inspect(
    f.system_network_interface(interface_type="wl", schema="mac"),
    content="wlx1ecc0f92e8f6",
  )
  f.seed(4294967295)
  json_inspect(
    f.word_adjective(min_length=5, max_length=7, strategy=Shortest),
    content="bulky",
  )
  f.seed(4294967295)
  json_inspect(
    f.word_sample(min_length=4, max_length=4, strategy=AnyLength),
    content="that",
  )
  f.seed(4294967295)
  json_inspect(
    f.word_words(count=5),
    content="supposing conservative hence pish accept",
  )
  f.seed(4294967295)
  json_inspect(
    f.replace_credit_card_symbols(pattern="1234-[4-9]-##!!-L"),
    content="1234-4-9782-2",
  )
  f.seed(4294967295)
  json_inspect(f.array_samples([1, 2, 3, 4, 5], count=3), content=[1, 5, 4])
  f.seed(4294967295)
  json_inspect(f.unique_array(["a", "b", "c", "b", "d", "e"], 3), content=[
    "e", "b", "c",
  ])
  f.seed(4294967295)
  json_inspect(f.unique_array(["a", "b"], 5), content=["b", "a"])
  f.seed(4294967295)
  json_inspect(@faker.unique_array_with(() => f.int(max=5), 4), content=[
    0, 5, 4, 3,
  ])
  f.seed(4294967295)
  json_inspect(@faker.unique_array_with(() => f.int(max=2), 5), content=[
    0, 2, 1,
  ])
  f.seed(4294967295)
  json_inspect(@faker.multiple(i => f.int(max=9) * 10 + i, count=4), content=[
    0, 91, 72, 73,
  ])
  f.seed(4294967295)
  json_inspect(f.range_to_number(Range(min=1, max=10)), content=1)
  f.seed(4294967295)
  json_inspect(
    @faker.slugify("Héllo Wörld ß ﬁne ½.txt"),
    content="Hello-World--fine-12.txt",
  )
  f.seed(4294967295)
  json_inspect(
    @faker.slugify("Ｆｕｌｌ　ｗｉｄｔｈ ⅷ ㎏ ñandú"),
    content="Full-width-viii-kg-nandu",
  )
}
