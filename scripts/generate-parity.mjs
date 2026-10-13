// Rebuild fixtures against the pinned upstream checkout. No npm install needed.
import './ts-loader.mjs';
import { writeFileSync } from 'node:fs';
const { Faker } = await import('../.repos/faker/src/faker.ts');
const {default: en} = await import('../.repos/faker/src/locales/en/index.ts');
const {default: base} = await import('../.repos/faker/src/locales/base/index.ts');
const faker = new Faker({locale: [en, base]});
export function fixtures(file, cases) {
  let output = '// Generated against the pinned Faker checkout by scripts/generate-parity.mjs.\n';
  for (const seed of [0, 1, 42, 12345, 4294967295]) {
    output += `///|\ntest "upstream parity seed ${seed}" {\n  let f = @faker.Faker::new(seed=${seed})\n`;
    for (const [moon, generate] of cases) {
      faker.seed(seed);
      const expected = generate(faker);
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
