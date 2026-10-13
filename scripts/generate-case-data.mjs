import { mkdirSync, writeFileSync } from 'node:fs';
mkdirSync('internal/unicode', {recursive:true});
writeFileSync('internal/unicode/moon.pkg','');
for(const [name,convert] of [['upper',s=>s.toUpperCase()],['lower',s=>s.toLowerCase()]]) {
 const cases=[];
 for(let code=128;code<=0x10ffff;code++) {
   if(code>=0xd800 && code<=0xdfff) continue;
   const c=String.fromCodePoint(code), mapped=convert(c);
   if(mapped!==c) cases.push(`    ${code} => ${JSON.stringify(mapped)}`);
 }
 writeFileSync(`internal/unicode/${name}.mbt`,`// Generated Unicode ${name}case mappings.\n///|\npub fn ${name}(text : String) -> String {\n  let out = StringBuilder()\n  for c in text {\n    let value = match c.to_int() {\n${cases.join('\n')}\n      _ => c.to_string().to_${name}()\n    }\n    out.write_string(value)\n  }\n  out.to_string()\n}\n`);
}
