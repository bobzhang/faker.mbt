// Rebuild fixtures against the pinned upstream checkout. No npm install needed.
import './ts-loader.mjs';
import { writeFileSync } from 'node:fs';
const { Faker } = await import('../.repos/faker/src/faker.ts');
const {default: en} = await import('../.repos/faker/src/locales/en/index.ts');
const {default: base} = await import('../.repos/faker/src/locales/base/index.ts');
const faker = new Faker({locale: [en, base]});
// Native sin/cos come from the platform C library and can differ from V8 in the
// last digit, so trigonometric results are compared to nine decimal places.
// `round_coordinate` in core_test.mbt is the MoonBit counterpart.
const roundCoordinate = pair => pair.map(x => Math.floor(x * 1e9 + 0.5) / 1e9);
export function fixtures(file, cases) {
  let output = '// Generated against the pinned Faker checkout by scripts/generate-parity.mjs.\n';
  for (const seed of [0, 1, 42, 12345, 4294967295]) {
    output += `///|\ntest "upstream parity seed ${seed}" {\n  let f = @faker.Faker(seed=${seed})\n`;
    for (const [moon, generate] of cases) {
      faker.seed(seed);
      let expected = generate(faker);
      if (file === "date_parity_test.mbt") expected = Array.isArray(expected) ? expected.map(String) : String(expected);
      output += `  f.seed(${seed})\n  json_inspect(${moon}, content=${JSON.stringify(expected)})\n`;
    }
    output += '}\n\n';
  }
  writeFileSync(file, output);
}
fixtures('core_parity_test.mbt', [
 ['f.int(min=-100, max=100)', f => f.number.int({min:-100,max:100})],
 ['f.int(min=-2147483648, max=2147483647)', f => f.number.int({min:-2147483648,max:2147483647})],
 ['f.int(min=-100, max=100, multiple_of=7)', f => f.number.int({min:-100,max:100,multipleOf:7})],
 ['f.float(min=-100, max=100)', f => f.number.float({min:-100,max:100})],
 ['f.float(min=-100, max=100, fraction_digits=2)', f => f.number.float({min:-100,max:100,fractionDigits:2})],
 ['f.boolean()', f => f.datatype.boolean()],
 ['f.array_element(["a", "b", "c"])', f => f.helpers.arrayElement(['a','b','c'])],
 ['f.shuffle([1, 2, 3, 4, 5])', f => f.helpers.shuffle([1,2,3,4,5])],
 ['f.array_elements([1, 2, 3, 4, 5], count=3)', f => f.helpers.arrayElements([1,2,3,4,5],3)],
 ['f.weighted_array_element([(1.0, "a"), (2.0, "b"), (3.0, "c")])', f => f.helpers.weightedArrayElement([{weight:1,value:'a'},{weight:2,value:'b'},{weight:3,value:'c'}])],
 ['f.replace_symbols("##??**")', f => f.helpers.replaceSymbols('##??**')],
 ['f.roman_numeral()', f => f.number.romanNumeral()],
]);
fixtures('string_parity_test.mbt', [
 ['f.alpha(length=20)', f => f.string.alpha(20)],
 ['f.alpha(length=20, casing=Upper, exclude="ABC")', f => f.string.alpha({length:20,casing:'upper',exclude:'ABC'})],
 ['f.alphanumeric(length=20)', f => f.string.alphanumeric(20)],
 ['f.numeric(length=20, allow_leading_zeros=false)', f => f.string.numeric({length:20,allowLeadingZeros:false})],
 ['f.hexadecimal(length=20)', f => f.string.hexadecimal({length:20})],
 ['f.binary(length=20)', f => f.string.binary({length:20})],
 ['f.octal(length=20)', f => f.string.octal({length:20})],
 ['f.symbol(length=20)', f => f.string.symbol(20)],
 ['f.string_sample(length=20)', f => f.string.sample(20)],
 ['f.nanoid()', f => f.string.nanoid()],
 ['f.uuid()', f => f.string.uuid()],
 ['f.uuid_v7(1577836800000L)', f => f.string.uuid({version:7,refDate:1577836800000})],
 ['f.ulid(1577836800000L)', f => f.string.ulid({refDate:1577836800000})],
]);
const { readFileSync } = await import('node:fs');
const dataMethods = JSON.parse(readFileSync(new URL('./data-methods.json', import.meta.url)));
const snakeKeys = value => Array.isArray(value) ? value.map(snakeKeys) : value && typeof value === 'object' ? Object.fromEntries(Object.entries(value).map(([k,v]) => [k.replace(/[A-Z]/g,c=>'_'+c.toLowerCase()),snakeKeys(v)])) : value;
fixtures('data_parity_test.mbt', dataMethods.map(([moon,group,hyphen]) => {
  const method = hyphen.replace(/-([a-z])/g, (_,c)=>c.toUpperCase());
  return [`f.${moon}()`, f => snakeKeys(f[group][method]())];
}));
fixtures('composition_parity_test.mbt', [
 ['f.person_first_name()', f => f.person.firstName()],
 ['f.person_first_name(sex=Female)', f => f.person.firstName('female')],
 ['f.person_last_name()', f => f.person.lastName()],
 ['f.person_middle_name()', f => f.person.middleName()],
 ['f.person_prefix()', f => f.person.prefix()],
 ['f.person_full_name()', f => f.person.fullName()],
 ['f.person_full_name(first_name="Jane", sex=Female)', f => f.person.fullName({firstName:'Jane',sex:'female'})],
 ['f.person_job_title()', f => f.person.jobTitle()],
 ['f.company_name()', f => f.company.name()],
 ['f.company_catch_phrase()', f => f.company.catchPhrase()],
 ['f.company_buzz_phrase()', f => f.company.buzzPhrase()],
 ['f.commerce_product_name()', f => f.commerce.productName()],
 ['f.commerce_product_description()', f => f.commerce.productDescription()],
 ['f.food_description()', f => f.food.description()],
 ['f.food_dish()', f => f.food.dish()],
 ['f.hacker_phrase()', f => f.hacker.phrase()],
 ['f.vehicle_vehicle()', f => f.vehicle.vehicle()],
 ['f.location_city()', f => f.location.city()],
 ['f.location_street()', f => f.location.street()],
 ['f.location_building_number()', f => f.location.buildingNumber()],
 ['f.location_secondary_address()', f => f.location.secondaryAddress()],
 ['f.location_street_address(full=true)', f => f.location.streetAddress({useFullAddress:true})],
 ['f.location_zip_code()', f => f.location.zipCode()],
 ['f.location_state()', f => f.location.state()],
 ['f.location_country_code()', f => f.location.countryCode()],
 ['f.location_direction()', f => f.location.direction()],
 ['f.location_latitude()', f => f.location.latitude()],
]);
fixtures('text_parity_test.mbt', [
 ['f.word_adjective()', f => f.word.adjective()],
 ['f.word_noun(min_length=5, max_length=5)', f => f.word.noun(5)],
 ['f.word_verb(min_length=100, max_length=100, strategy=Closest)', f => f.word.verb({length:100,strategy:'closest'})],
 ['f.word_sample()', f => f.word.sample()],
 ['f.word_words()', f => f.word.words()],
 ['f.lorem_word()', f => f.lorem.word()],
 ['f.lorem_words()', f => f.lorem.words()],
 ['f.lorem_sentence()', f => f.lorem.sentence()],
 ['f.lorem_paragraph()', f => f.lorem.paragraph()],
 ['f.lorem_paragraphs()', f => f.lorem.paragraphs()],
 ['f.lorem_lines()', f => f.lorem.lines()],
 ['f.lorem_text()', f => f.lorem.text()],
]);
fixtures('internet_parity_test.mbt', [
 ['f.internet_display_name()', f => f.internet.displayName()],
 ['f.internet_username()', f => f.internet.username()],
 ['f.internet_username(first_name="Élodie张", last_name="ЖуковÅ")', f => f.internet.username({firstName:'Élodie张',lastName:'ЖуковÅ'})],
 ['f.internet_email()', f => f.internet.email()],
 ['f.internet_example_email()', f => f.internet.exampleEmail()],
 ['f.internet_domain_word()', f => f.internet.domainWord()],
 ['f.internet_url()', f => f.internet.url()],
 ['f.internet_emoji()', f => f.internet.emoji()],
 ['f.internet_http_status_code()', f => f.internet.httpStatusCode()],
 ['f.internet_ipv4()', f => f.internet.ipv4()],
 ['f.internet_ipv4(cidr="192.168.1.42/24")', f => f.internet.ipv4({cidrBlock:'192.168.1.42/24'})],
 ['f.internet_ipv6()', f => f.internet.ipv6()],
 ['f.internet_ip()', f => f.internet.ip()],
 ['f.internet_mac()', f => f.internet.mac()],
 ['f.internet_password()', f => f.internet.password()],
 ['f.internet_password(memorable=true)', f => f.internet.password({memorable:true})],
]);
fixtures('system_parity_test.mbt', [
 ...['mimeType','fileType','fileExt','fileName','filePath','commonFileExt','commonFileType','commonFileName','networkInterface','semver','cron'].map(method => [`f.system_${method.replace(/[A-Z]/g,c=>'_'+c.toLowerCase())}()`, f=>f.system[method]()]),
 ['f.airline_seat()', f=>f.airline.seat()],
 ['f.airline_flight_number()', f=>f.airline.flightNumber()],
 ['f.airline_record_locator()', f=>f.airline.recordLocator()],
 ['f.phone_number()', f=>f.phone.number()],
 ['f.git_branch()', f=>f.git.branch()],
 ['f.git_commit_message()', f=>f.git.commitMessage()],
 ['f.git_commit_sha()', f=>f.git.commitSha()],
 ['f.database_mongodb_object_id()', f=>f.database.mongodbObjectId()],
 ['f.person_bio()', f=>f.person.bio()],
 ['f.internet_user_agent()', f=>f.internet.userAgent()],
]);
fixtures('date_parity_test.mbt', [
 ['f.date_between(0L, 1893456000000L)', f=>f.date.between({from:0,to:1893456000000}).valueOf()],
 ['f.date_betweens(0L, 1893456000000L)', f=>f.date.betweens({from:0,to:1893456000000}).map(x=>x.valueOf())],
 ...['anytime','recent','soon','past','future','birthdate'].map(name=>[`f.date_${name}()`,f=>f.date[name]({refDate:1577836800000}).valueOf()]),
 ['f.date_birthdate(min=1900, max=2000, mode="year")', f=>f.date.birthdate({min:1900,max:2000,mode:'year',refDate:1577836800000}).valueOf()],
 ['f.date_past(years=4, ref_date=1709208000000L)', f=>f.date.past({years:4,refDate:1709208000000}).valueOf()],
 ['f.date_month()', f=>f.date.month()],
 ['f.date_weekday(abbreviated=true)', f=>f.date.weekday({abbreviated:true})],
]);
fixtures('finance_parity_test.mbt', [
 ...['accountName','accountNumber','amount','bic','bitcoinAddress','creditCardCvv','creditCardIssuer','creditCardNumber','currencyCode','currencyName','currencyNumericCode','currencySymbol','ethereumAddress','iban','litecoinAddress','pin','routingNumber','vatNumber'].map(method => [`f.finance_${method.replace(/[A-Z]/g,c=>'_'+c.toLowerCase())}()`, f=>f.finance[method === "creditCardCvv" ? "creditCardCVV" : method]()]),
 ['f.finance_iban(country_code="GB", formatted=true)', f=>f.finance.iban({countryCode:'GB',formatted:true})],
 ['f.commerce_price()', f=>f.commerce.price()],
 ['f.commerce_isbn()', f=>f.commerce.isbn()],
 ['f.commerce_isbn(variant=10)', f=>f.commerce.isbn(10)],
 ['f.commerce_upc()', f=>f.commerce.upc()],
 ['f.vehicle_vin()', f=>f.vehicle.vin()],
 ['f.vehicle_vrm()', f=>f.vehicle.vrm()],
 ['f.phone_imei()', f=>f.phone.imei()],
 ['f.from_reg_exp("[A-Z]{2}[0-9]{4,8}W{0,1}")', f=>f.helpers.fromRegExp('[A-Z]{2}[0-9]{4,8}W{0,1}')],
 ['f.from_reg_exp("[A-D]{3}x?", ignore_case=true)', f=>f.helpers.fromRegExp(/[A-D]{3}x?/i)],
]);
fixtures('color_image_parity_test.mbt', [
 ['f.color_rgb()', f=>f.color.rgb()],
 ['f.color_rgb_channels(include_alpha=true)', f=>f.color.rgb({format:'decimal',includeAlpha:true})],
 ...['cmyk','hsl','hwb','lab','lch'].map(name=>[`f.color_${name}()`,f=>f.color[name]()]),
 ['f.color_by_css_color_space()', f=>f.color.colorByCSSColorSpace()],
 ['@faker.color_css(f.color_hsl(include_alpha=true), model="hsla")', f=>f.color.hsl({format:'css',includeAlpha:true})],
 ['@faker.color_binary(f.color_lch())', f=>f.color.lch({format:'binary'})],
 ['f.image_avatar()', f=>f.image.avatar()],
 ['f.image_url()', f=>f.image.url()],
 ['f.image_url_picsum_photos()', f=>f.image.urlPicsumPhotos()],
 ['f.image_data_uri()', f=>f.image.dataUri()],
 ['f.big_int()', f=>f.number.bigInt().toString()],
 ['f.big_int(min=-100000000000000000000N, max=100000000000000000000N, multiple_of=13N)', f=>f.number.bigInt({min:-100000000000000000000n,max:100000000000000000000n,multipleOf:13n}).toString()],
 ['round_coordinate(f.location_nearby_gps_coordinate(origin=(33.0, -170.0)))', f=>roundCoordinate(f.location.nearbyGPSCoordinate({origin:[33,-170]}))],
 ['f.finance_transaction_description()', f=>f.finance.transactionDescription()],
]);
fixtures('remaining_parity_test.mbt', [
 ['f.git_commit_date()', f=>f.git.commitDate({refDate:1577836800000})],
 ['f.git_commit_entry()', f=>f.git.commitEntry({refDate:1577836800000})],
 ['f.internet_jwt()', f=>f.internet.jwt({refDate:1577836800000})],
 ['f.object_entry({"a": 1, "b": 2, "c": 3})', f=>f.helpers.objectEntry({a:1,b:2,c:3})],
]);
// Optional arguments and helper behaviors that the groups above do not exercise.
const R = 1600000000000;
const ms = d => String(d.valueOf());
fixtures('options_parity_test.mbt', [
 ['f.airline_flight_number(length=3, add_leading_zeros=true)', f=>f.airline.flightNumber({length:3,addLeadingZeros:true})],
 ['f.airline_record_locator(allow_numerics=true, allow_visually_similar=true)', f=>f.airline.recordLocator({allowNumerics:true,allowVisuallySimilarCharacters:true})],
 ['f.airline_seat(aircraft_type="widebody")', f=>f.airline.seat({aircraftType:'widebody'})],
 ['f.alphanumeric(length=12, casing=Lower, exclude="abc1")', f=>f.string.alphanumeric({length:12,casing:'lower',exclude:'abc1'})],
 ['f.binary(length=8, prefix="b")', f=>f.string.binary({length:8,prefix:'b'})],
 ['f.octal(length=6, prefix="0o")', f=>f.string.octal({length:6,prefix:'0o'})],
 ['f.hexadecimal(length=10, prefix="#", casing=Upper)', f=>f.string.hexadecimal({length:10,prefix:'#',casing:'upper'})],
 ['f.numeric(length=10, exclude="13579")', f=>f.string.numeric({length:10,exclude:'13579'})],
 ['f.nanoid(length=10)', f=>f.string.nanoid(10)],
 ['f.from_characters("abc", length=10)', f=>f.string.fromCharacters('abc',10)],
 ['f.color_rgb(include_alpha=true, prefix="#", casing=Upper)', f=>f.color.rgb({includeAlpha:true,prefix:'#',casing:'upper'})],
 ['f.color_hsl(include_alpha=true)', f=>f.color.hsl({includeAlpha:true})],
 ['@faker.color_css(f.color_by_css_color_space(), model="color", space="display-p3")', f=>f.color.colorByCSSColorSpace({format:'css',space:'display-p3'})],
 ['f.commerce_isbn(variant=10, separator=" ")', f=>f.commerce.isbn({variant:10,separator:' '})],
 ['f.commerce_price(min=10, max=500, decimals=3, symbol="$")', f=>f.commerce.price({min:10,max:500,dec:3,symbol:'$'})],
 ['f.commerce_upc(prefix="01234")', f=>f.commerce.upc({prefix:'01234'})],
 [`f.date_anytime(ref_date=${R}L)`, f=>ms(f.date.anytime({refDate:R}))],
 [`f.date_betweens(1500000000000L, ${R}L, count=4)`, f=>f.date.betweens({from:1500000000000,to:R,count:4}).map(ms)],
 [`f.date_birthdate(min=18, max=65, mode="age", ref_date=${R}L)`, f=>ms(f.date.birthdate({min:18,max:65,mode:'age',refDate:R}))],
 [`f.date_future(years=5, min_years=2, ref_date=${R}L)`, f=>ms(f.date.future({years:{min:2,max:5},refDate:R}))],
 [`f.date_past(years=5, min_years=2, ref_date=${R}L)`, f=>ms(f.date.past({years:{min:2,max:5},refDate:R}))],
 [`f.date_recent(days=10, min_days=3, ref_date=${R}L)`, f=>ms(f.date.recent({days:{min:3,max:10},refDate:R}))],
 [`f.date_soon(days=10, ref_date=${R}L)`, f=>ms(f.date.soon({days:10,refDate:R}))],
 ['f.date_month(abbreviated=true, context=true)', f=>f.date.month({abbreviated:true,context:true})],
 ['f.date_weekday(abbreviated=true, context=true)', f=>f.date.weekday({abbreviated:true,context:true})],
 ['f.finance_account_number(length=12)', f=>f.finance.accountNumber(12)],
 ['f.finance_amount(min=5, max=50, decimals=4, symbol="€")', f=>f.finance.amount({min:5,max:50,dec:4,symbol:'€'})],
 ['f.finance_bic(include_branch_code=true)', f=>f.finance.bic({includeBranchCode:true})],
 ['f.finance_bitcoin_address(family="bech32", testnet=true)', f=>f.finance.bitcoinAddress({type:'bech32',network:'testnet'})],
 ['f.finance_bitcoin_address(family="taproot")', f=>f.finance.bitcoinAddress({type:'taproot'})],
 ['f.finance_credit_card_number(issuer="visa")', f=>f.finance.creditCardNumber('visa')],
 ['f.finance_credit_card_number(issuer="63[7-9]#-####-####-###L")', f=>f.finance.creditCardNumber('63[7-9]#-####-####-###L')],
 ['f.finance_pin(length=6)', f=>f.finance.pin(6)],
 ['f.finance_vat_number(country_code="ES")', f=>f.finance.vatNumber({countryCode:'ES'})],
 ['@faker.multiple(_ => f.finance_vat_number(), count=40)', f=>f.helpers.multiple(()=>f.finance.vatNumber(),{count:40})],
 ['f.finance_iban(country_code="DE", formatted=true)', f=>f.finance.iban({countryCode:'DE',formatted:true})],
 [`f.git_commit_date(ref_date=${R}L)`, f=>f.git.commitDate({refDate:R})],
 [`f.git_commit_entry(merge=true, eol="LF", ref_date=${R}L)`, f=>f.git.commitEntry({merge:true,eol:'LF',refDate:R})],
 ['f.git_commit_sha(length=7)', f=>f.git.commitSha({length:7})],
 ['f.image_data_uri(width=10, height=20, color="red", base64=true)', f=>f.image.dataUri({width:10,height:20,color:'red',type:'svg-base64'})],
 ['f.image_url(width=100, height=50)', f=>f.image.url({width:100,height:50})],
 ['f.image_url_picsum_photos(width=100, height=50, grayscale=true, blur=3)', f=>f.image.urlPicsumPhotos({width:100,height:50,grayscale:true,blur:3})],
 ['f.image_person_portrait(size=128, sex=Female)', f=>f.image.personPortrait({size:128,sex:'female'})],
 ['f.internet_display_name(first_name="Jeanne", last_name="Doe")', f=>f.internet.displayName({firstName:'Jeanne',lastName:'Doe'})],
 ['f.internet_email(first_name="Jeanne", last_name="Doe", provider="example.dev", allow_special_characters=true)', f=>f.internet.email({firstName:'Jeanne',lastName:'Doe',provider:'example.dev',allowSpecialCharacters:true})],
 ['f.internet_example_email(first_name="Jeanne", last_name="Doe", allow_special_characters=true)', f=>f.internet.exampleEmail({firstName:'Jeanne',lastName:'Doe',allowSpecialCharacters:true})],
 ['f.internet_emoji(types=["food", "nature"])', f=>f.internet.emoji({types:['food','nature']})],
 ['f.internet_http_status_code(types=["clientError", "serverError"])', f=>f.internet.httpStatusCode({types:['clientError','serverError']})],
 ['f.internet_ipv4(network="private-a")', f=>f.internet.ipv4({network:'private-a'})],
 ['f.internet_ipv4(network="test-net-2")', f=>f.internet.ipv4({network:'test-net-2'})],
 ['f.internet_ipv4(network="multicast")', f=>f.internet.ipv4({network:'multicast'})],
 [`f.internet_jwt(header={ "x": 1 }, payload={ "iss": "me" }, ref_date=${R}L)`, f=>f.internet.jwt({header:{x:1},payload:{iss:'me'},refDate:R})],
 ['f.internet_mac(separator="-")', f=>f.internet.mac('-')],
 ['f.internet_password(length=20, prefix="Ab1!")', f=>f.internet.password({length:20,prefix:'Ab1!'})],
 ['f.internet_url(protocol="http", append_slash=true)', f=>f.internet.url({protocol:'http',appendSlash:true})],
 ['f.internet_username(first_name="Ольга", last_name="Васильев")', f=>f.internet.username({firstName:'Ольга',lastName:'Васильев'})],
 ['f.internet_username(first_name="Zoë", last_name="Núñez")', f=>f.internet.username({firstName:'Zoë',lastName:'Núñez'})],
 ['f.location_country_code(variant="alpha-3")', f=>f.location.countryCode('alpha-3')],
 ['f.location_country_code(variant="numeric")', f=>f.location.countryCode('numeric')],
 ['f.location_direction(abbreviated=true)', f=>f.location.direction({abbreviated:true})],
 ['f.location_cardinal_direction(abbreviated=true)', f=>f.location.cardinalDirection({abbreviated:true})],
 ['f.location_ordinal_direction(abbreviated=true)', f=>f.location.ordinalDirection({abbreviated:true})],
 ['f.location_state(abbreviated=true)', f=>f.location.state({abbreviated:true})],
 ['f.location_latitude(min=-10, max=10, precision=6)', f=>f.location.latitude({min:-10,max:10,precision:6})],
 ['f.location_longitude(min=-10, max=10, precision=2)', f=>f.location.longitude({min:-10,max:10,precision:2})],
 ['round_coordinate(f.location_nearby_gps_coordinate(origin=(33.0, -170.0), radius=1000, metric=true))', f=>roundCoordinate(f.location.nearbyGPSCoordinate({origin:[33,-170],radius:1000,isMetric:true}))],
 ['f.location_zip_code(format="####-??")', f=>f.location.zipCode('####-??')],
 ['f.lorem_lines(count=3)', f=>f.lorem.lines(3)],
 ['f.lorem_paragraphs(count=2, separator="|")', f=>f.lorem.paragraphs(2,'|')],
 ['f.lorem_sentence(count=5)', f=>f.lorem.sentence(5)],
 ['f.lorem_sentences(count=3, separator="|")', f=>f.lorem.sentences(3,'|')],
 ['f.lorem_slug(count=4)', f=>f.lorem.slug(4)],
 ['f.lorem_word(min_length=5, max_length=7, strategy=Closest)', f=>f.lorem.word({length:{min:5,max:7},strategy:'closest'})],
 ['f.person_full_name(last_name="Doe")', f=>f.person.fullName({lastName:'Doe'})],
 ['f.person_last_name(sex=Male)', f=>f.person.lastName('male')],
 ['f.person_middle_name(sex=Female)', f=>f.person.middleName('female')],
 ['f.person_prefix(sex=Male)', f=>f.person.prefix('male')],
 ['f.phone_number(style="international")', f=>f.phone.number({style:'international'})],
 ['f.phone_number(style="national")', f=>f.phone.number({style:'national'})],
 ['f.roman_numeral(min=10, max=100)', f=>f.number.romanNumeral({min:10,max:100})],
 ['f.number_hex(min=10, max=1000)', f=>f.number.hex({min:10,max:1000})],
 ['f.number_binary(min=10, max=1000)', f=>f.number.binary({min:10,max:1000})],
 ['f.number_octal(min=10, max=1000)', f=>f.number.octal({min:10,max:1000})],
 ['f.int64()', f=>String(f.number.int())],
 ['f.float(min=0, max=10, multiple_of=0.25)', f=>f.number.float({min:0,max:10,multipleOf:0.25})],
 ['f.boolean(probability=0.8)', f=>f.datatype.boolean(0.8)],
 ['f.system_common_file_name(extension="txt")', f=>f.system.commonFileName('txt')],
 ['f.system_cron(include_year=true, include_non_standard=true)', f=>f.system.cron({includeYear:true,includeNonStandard:true})],
 ['f.system_file_ext(mime_type="application/json")', f=>f.system.fileExt('application/json')],
 ['f.system_file_name(extension_count=2)', f=>f.system.fileName({extensionCount:2})],
 ['f.system_network_interface(interface_type="wl", schema="mac")', f=>f.system.networkInterface({interfaceType:'wl',interfaceSchema:'mac'})],
 ['f.word_adjective(min_length=5, max_length=7, strategy=Shortest)', f=>f.word.adjective({length:{min:5,max:7},strategy:'shortest'})],
 ['f.word_sample(min_length=4, max_length=4, strategy=AnyLength)', f=>f.word.sample({length:4,strategy:'any-length'})],
 ['f.word_words(count=5)', f=>f.word.words(5)],
 ['f.replace_credit_card_symbols(pattern="1234-[4-9]-##!!-L")', f=>f.helpers.replaceCreditCardSymbols('1234-[4-9]-##!!-L')],
 ['f.array_samples([1, 2, 3, 4, 5], count=3)', f=>f.helpers.arraySamples([1,2,3,4,5],3)],
 ['f.unique_array(["a", "b", "c", "b", "d", "e"], 3)', f=>f.helpers.uniqueArray(['a','b','c','b','d','e'],3)],
 ['f.unique_array(["a", "b"], 5)', f=>f.helpers.uniqueArray(['a','b'],5)],
 ['@faker.unique_array_with(() => f.int(max=5), 4)', f=>f.helpers.uniqueArray(()=>f.number.int(5),4)],
 ['@faker.unique_array_with(() => f.int(max=2), 5)', f=>f.helpers.uniqueArray(()=>f.number.int(2),5)],
 ['@faker.multiple(i => f.int(max=9) * 10 + i, count=4)', f=>f.helpers.multiple((_,i)=>f.number.int(9)*10+i,{count:4})],
 ['f.range_to_number(Range(min=1, max=10))', f=>f.helpers.rangeToNumber({min:1,max:10})],
 ['@faker.slugify("Héllo Wörld ß ﬁne ½.txt")', f=>f.helpers.slugify('Héllo Wörld ß ﬁne ½.txt')],
 ['@faker.slugify("Ｆｕｌｌ　ｗｉｄｔｈ ⅷ ㎏ ñandú")', f=>f.helpers.slugify('Ｆｕｌｌ　ｗｉｄｔｈ ⅷ ㎏ ñandú')],
]);
