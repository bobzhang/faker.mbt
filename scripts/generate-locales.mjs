// Usage: node scripts/generate-locales.mjs [path/to/faker]
// Generated data is committed; building the library does not require Node or Faker.
import './ts-loader.mjs';
import { readdirSync, mkdirSync, writeFileSync, readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import { execFileSync } from 'node:child_process';
const root = resolve(process.argv[2] ?? '.repos/faker');
const names = readdirSync(`${root}/src/locales`, { withFileTypes: true }).filter(x => x.isDirectory()).map(x => x.name).sort();
let total = 0;
for (const name of names) {
  const { default: data } = await import(pathToFileURL(`${root}/src/locales/${name}/index.ts`));
  const directory = `locales/${name.toLowerCase()}`;
  mkdirSync(directory, { recursive: true });
  // The fallback chain of upstream's prebuilt faker for this locale.
  const prebuilt = readFileSync(`${root}/src/locale/${name}.ts`, 'utf8');
  const chain = (prebuilt.match(/locale: \[([^\]]+)\]/)?.[1] ?? name).split(',').map(x => x.trim()).filter(Boolean);
  const fallbacks = chain.filter(x => x !== name).map(x => x.toLowerCase());
  writeFileSync(`${directory}/moon.pkg`, fallbacks.length === 0 ? 'import { "bobzhang/faker/locale" }\n' : `import {\n  "bobzhang/faker/locale",\n${fallbacks.map(x => `  "bobzhang/faker/locales/${x}",`).join('\n')}\n}\n`);
  writeFileSync(`${directory}/fallback.mbt`, `// Generated from Faker's prebuilt ${name} instance. See LICENSE. Do not edit.\n///|\n/// This locale followed by the fallbacks of upstream's prebuilt faker for it,\n/// in descending precedence. Pass it as \`locales\` to \`Faker\`.\npub fn locales() -> Array[@locale.Locale] {\n  [${chain.map(x => x === name ? 'locale()' : `@${x.toLowerCase()}.locale()`).join(', ')}]\n}\n`);
  const chunks = [];
  let chunk = '';
  for (const line of JSON.stringify(data, null, 2).split('\n')) {
    if (chunk.length + line.length > 2000) { chunks.push(chunk); chunk = ''; }
    chunk += line.trim() + ' ';
  }
  if (chunk) chunks.push(chunk);
  const json = chunks.join('\n');
  const lines = json.split('\n').map(line => `    #|${line}`).join('\n');
  writeFileSync(`${directory}/data.mbt`, `// Generated from Faker's ${name} locale. See LICENSE. Do not edit.\n///|\npub fn locale() -> @locale.Locale {\n  let data =\n${lines}\n  try! @locale.Locale::parse(data)\n}\n`);
  writeFileSync(`${directory}/data_test.mbt`, `///|\ntest "locale metadata parses" {\n  assert_true(@${name.toLowerCase()}.locale().get("metadata.code") == Some(Json::string("${name}")))\n}\n\n///|\ntest "fallback chain" {\n  let codes = @${name.toLowerCase()}.locales().map(locale => locale.get("metadata.code").unwrap())\n  json_inspect(codes, content=${JSON.stringify(chain)})\n}\n`);
  total += Buffer.byteLength(json);
}
const manifest = { version: JSON.parse(readFileSync(`${root}/package.json`)).version, commit: execFileSync('git', ['-C', root, 'rev-parse', 'HEAD'], { encoding: 'utf8' }).trim(), locales: names };
writeFileSync('scripts/upstream.json', JSON.stringify(manifest, null, 2) + '\n');
console.log(`Generated ${names.length} locales (${total} JSON bytes).`);
