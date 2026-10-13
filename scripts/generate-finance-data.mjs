import './ts-loader.mjs';
import { readFileSync, writeFileSync } from 'node:fs';
import { stripTypeScriptTypes } from 'node:module';
import { runInNewContext } from 'node:vm';
const { ibanLib } = await import('../.repos/faker/src/modules/finance/_iban-lib.ts');
const { vatNumberFormats } = await import('../.repos/faker/src/modules/finance/vat-number.ts');
const isbnSource = stripTypeScriptTypes(readFileSync('.repos/faker/src/modules/commerce/isbn.ts','utf8'));
const isbn = runInNewContext('(' + isbnSource.match(/const ISBN_LENGTH_RULES\s*=\s*([\s\S]*?);/)[1] + ')');
for (const [name, value] of Object.entries({iban_data:ibanLib, vat_formats:vatNumberFormats, isbn_rules:isbn})) {
 const lines = JSON.stringify(value,null,2).split('\n').map(line=>'    #|'+line).join('\n');
 writeFileSync(`${name}.mbt`, `// Generated from Faker source. See LICENSE.\n///|\nlet ${name} : Json = {\n  let text =\n${lines}\n  try! @json.parse(text)\n}\n`);
}
