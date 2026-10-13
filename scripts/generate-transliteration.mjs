import './ts-loader.mjs';
import { writeFileSync, mkdirSync } from 'node:fs';
const { charMapping } = await import('../.repos/faker/src/modules/internet/_char-mappings.ts');
const entries = [];
for (let code = 128; code <= 0x10ffff; code++) {
 if (code >= 0xd800 && code <= 0xdfff) continue;
 const char = String.fromCodePoint(code);
 const normalized = char.normalize('NFKD').replaceAll(/[\u0300-\u036f]/g, '');
 const result = [...normalized].map(c=>charMapping[c] ?? (c.codePointAt(0)<128 ? c : c.codePointAt(0).toString(36))).join('');
 if (result !== code.toString(36)) entries.push(`    ${code} => ${JSON.stringify(result)}`);
}
// Split lookup blocks to stay within compiler source segment limits.
mkdirSync('internal/transliteration', { recursive: true });
writeFileSync('internal/transliteration/moon.pkg', '');
let source = '// Generated using Unicode NFKD and Faker char mappings. See LICENSE.\n';
const chunks = [];
for (let i=0;i<entries.length;i+=1000) chunks.push(entries.slice(i,i+1000));
for (let i=0;i<chunks.length;i++) writeFileSync(`internal/transliteration/table_${i}.mbt`, `// Generated NFKD/Faker mapping. See LICENSE.\n///|\nfn transliterate_${i}(code : Int) -> String {\n  match code {\n${chunks[i].join('\n')}\n    _ => code.to_string(radix=36)\n  }\n}\n`);
source += `///|\npub fn username(value : String) -> String {\n  let out = StringBuilder()\n  for c in value {\n    let code = c.to_int()\n    if code < 128 { out.write_char(c) } else {\n      let mapped = ${chunks.map((chunk,i)=>`if code <= ${chunk.at(-1).trim().split(' ')[0]} { transliterate_${i}(code) } else `).join('')} { code.to_string(radix=36) }\n      out.write_string(mapped)\n    }\n  }\n  out.to_string()\n}\n`;
writeFileSync('internal/transliteration/username.mbt', source);
console.log(`Generated ${entries.length} transliteration entries.`);
