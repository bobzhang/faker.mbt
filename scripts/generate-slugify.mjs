// Usage: node scripts/generate-slugify.mjs
// Precomputes helpers.slugify for every non-ASCII code point: NFKD, drop
// combining marks, spaces to hyphens, then keep only [A-Za-z0-9_.-].
import { writeFileSync } from 'node:fs';
const entries = [];
for (let code = 128; code <= 0x10ffff; code++) {
  if (code >= 0xd800 && code <= 0xdfff) continue;
  const result = String.fromCodePoint(code)
    .normalize('NFKD')
    .replaceAll(/[̀-ͯ]/g, '')
    .replaceAll(' ', '-')
    .replaceAll(/[^\w.-]+/g, '');
  if (result !== '') entries.push([code, result]);
}
// Split lookup blocks to stay within compiler source segment limits.
const chunks = [];
for (let i = 0; i < entries.length; i += 1000) chunks.push(entries.slice(i, i + 1000));
chunks.forEach((chunk, i) => writeFileSync(`internal/transliteration/slug_table_${i}.mbt`, `// Generated NFKD slug mapping. See LICENSE.\n///|\nfn slug_${i}(code : Int) -> String {\n  match code {\n${chunk.map(([code, result]) => `    ${code} => ${JSON.stringify(result)}`).join('\n')}\n    _ => ""\n  }\n}\n`));
const lookup = chunks.map((chunk, i) => `if code <= ${chunk.at(-1)[0]} { slug_${i}(code) } else `).join('') + '{ "" }';
writeFileSync('internal/transliteration/slug.mbt', `// Generated using Unicode NFKD. See LICENSE.
///|
/// Faker's \`helpers.slugify\`: decompose accented characters, drop combining
/// marks, turn spaces into hyphens and remove everything outside \`[A-Za-z0-9_.-]\`.
pub fn slugify(value : String) -> String {
  let out = StringBuilder()
  for c in value {
    let code = c.to_int()
    if c == ' ' {
      out.write_char('-')
    } else if c is ('a'..='z' | 'A'..='Z' | '0'..='9' | '_' | '.' | '-') {
      out.write_char(c)
    } else if code >= 128 {
      out.write_string(${lookup})
    }
  }
  out.to_string()
}
`);
console.log(`Generated ${entries.length} slug entries.`);
