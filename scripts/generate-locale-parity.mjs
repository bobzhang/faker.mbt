import './ts-loader.mjs';
import { readFileSync, writeFileSync, mkdirSync } from 'node:fs';
const {Faker} = await import('../.repos/faker/src/faker.ts');
const names = JSON.parse(readFileSync('scripts/upstream.json')).locales;
mkdirSync('integration', {recursive:true});
writeFileSync('integration/moon.pkg', 'import {\n  "bobzhang/faker",\n'+names.filter(n=>n!=='base').map(n=>`  "bobzhang/faker/locales/${n.toLowerCase()}",`).join('\n')+'\n} for "wbtest"\n');
const cases=[['person_first_name','person','firstName'],['person_last_name','person','lastName'],['person_full_name','person','fullName'],['location_city','location','city'],['location_street_address','location','streetAddress'],['location_zip_code','location','zipCode'],['phone_number','phone','number'],['company_name','company','name'],['person_bio','person','bio'],['internet_user_agent','internet','userAgent'],['location_postal_address','location','postalAddress'],['date_month','date','month'],['food_dish','food','dish'],['lorem_slug','lorem','slug'],['internet_domain_name','internet','domainName'],['internet_username','internet','username'],['internet_url','internet','url']];
for(const name of names) {
 if(name==='base') continue;
 const source=readFileSync(`.repos/faker/src/locale/${name}.ts`,'utf8');
 const chain=source.match(/locale: \[([^\]]+)\]/)[1].split(',').map(s=>s.trim()).filter(Boolean);
 const locales=[];
 for(const locale of chain) locales.push((await import(`../.repos/faker/src/locales/${locale}/index.ts`)).default);
 const f=new Faker({locale:locales});
 let text='// Generated localized parity cases against the pinned upstream revision.\n';
 for(const [moon,group,method] of cases) {
   f.seed(42);
   let expected, failed=false;
   try { expected=f[group][method](); } catch { failed=true; }
   text+=`///|\ntest "${name} ${group}.${method}" {\n  let f = @faker.Faker(seed=42, locales=@${name.toLowerCase()}.locales())\n`;
   if(failed) text+=`  try f.${moon}() catch { _ => () } noraise { _ => fail("upstream raises for this missing locale definition") }\n`;
   else text+=`  assert_eq(f.${moon}(), ${JSON.stringify(expected)})\n`;
   text+='}\n\n';
 }
 writeFileSync(`integration/${name.toLowerCase()}_wbtest.mbt`,text);
}
console.log('Generated parity cases for 76 locales.');
