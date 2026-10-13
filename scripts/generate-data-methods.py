"""Generate direct data samplers; compound algorithms are maintained by hand."""
from pathlib import Path
import json, re
root = Path('.repos/faker/src/modules')
records = {
 'airline.airline': ('Airline', [('name','name','String'),('iata_code','iataCode','String')]),
 'airline.airplane': ('Airplane', [('name','name','String'),('iata_type_code','iataTypeCode','String')]),
 'airline.airport': ('Airport', [('name','name','String'),('iata_code','iataCode','String')]),
 'finance.currency': ('Currency', [('name','name','String'),('code','code','String'),('symbol','symbol','String'),('numeric_code','numericCode','String')]),
 'location.language': ('Language', [('name','name','String'),('alpha2','alpha2','String'),('alpha3','alpha3','String')]),
 'science.chemical_element': ('ChemicalElement', [('symbol','symbol','String'),('name','name','String'),('atomic_number','atomicNumber','Int')]),
 'science.unit': ('ScienceUnit', [('name','name','String'),('symbol','symbol','String')]),
}
files, manifest = {}, []
for p in sorted(root.glob('*/*.ts')):
 s=p.read_text()
 m=re.search(r'return helpersArrayElement\(\s*fakerCore,\s*fakerCore\.locale\.([\w.]+)\s*\);',s)
 if not m: continue
 group, name, path = p.parent.name, p.stem.replace('-','_'), m[1]
 method = group + '_' + name
 js = re.search(r'export function (\w+)\(', s)[1]
 body = f'  self.sample("{path}")'
 typ = 'String'
 if path in records:
  typ, fields = records[path]
  body = f'  let value = self.sample_json("{path}")\n  {{\n'
  for field,key,t in fields:
   call = f'json_string(json_field(value, "{key}"))' if t=='String' else f'json_int(json_field(value, "{key}"))'
   body += f'    {field}: {call},\n'
  body += '  }'
 files.setdefault(group,[]).append(f'///|\n/// Sample `{path}` from the configured locales.\npub fn Faker::{method}(self : Faker) -> {typ} raise {{\n{body}\n}}\n')
 manifest.append([method,group,p.stem,js])
for group, blocks in files.items():
 Path(f'{group}_data.mbt').write_text('// Direct samplers ported from Faker. See LICENSE.\n'+'\n'.join(blocks))
text=''
for typ, fields in records.values():
 text += f'///|\npub struct {typ} {{\n'+''.join(f'  {field} : {t}\n' for field,key,t in fields)+f'}} derive(ToJson)\n\n///|\npub extend {typ} with ToJson::{{to_json}}\n\n'
Path('records.mbt').write_text(text)
Path('scripts/data-methods.json').write_text(json.dumps(manifest,indent=2)+'\n')
