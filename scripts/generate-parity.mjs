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
