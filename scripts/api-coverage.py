"""Emit the upstream-to-MoonBit API index and fail if a generator is missing."""
from pathlib import Path
import re
root=Path('.repos/faker/src/modules')
source='\n'.join(p.read_text() for p in Path('.').glob('*.mbt'))
methods=set(re.findall(r'pub fn(?:\[[^\]]+\])? Faker::(\w+)',source))
functions=set(re.findall(r'pub fn(?:\[[^\]]+\])? (\w+)\(',source))
overrides={('color','color-by-csscolor-space'):'color_by_css_color_space', ('number','hex'):'number_hex', ('number','binary'):'number_binary',('number','octal'):'number_octal',('string','sample'):'string_sample'}
rows=[]
missing=[]
for p in sorted(root.glob('*/*.ts')):
 if p.stem in ['index','module'] or p.stem.startswith('_'): continue
 group=p.parent.name
 stem=p.stem.replace('-','_')
 name=overrides.get((group,p.stem), stem if group in ['number','string','datatype','helpers'] else f'{group}_{stem}')
 if name in methods: api='Faker::'+name
 elif name in functions: api=name
 else: missing.append(f'{group}.{p.stem}'); api='MISSING'
 camel=p.stem.split('-'); camel=camel[0]+''.join(x[0].upper()+x[1:] for x in camel[1:])
 camel = {('finance','credit-card-cvv'):'creditCardCVV', ('color','color-by-csscolor-space'):'colorByCSSColorSpace', ('location','nearby-gps-coordinate'):'nearbyGPSCoordinate'}.get((group,p.stem),camel)
 rows.append(f'| `{group}.{camel}` | `{api}` |')
text='''# Upstream API index

Generated from the pinned checkout by `python3 scripts/api-coverage.py`.
Names describe the corresponding entry point; this is an API coverage inventory,
not a claim that every TypeScript overload or option is identical. See README.mbt.md
for intentional MoonBit adaptations and `pkg.generated.mbti` for signatures.

| Upstream generator | MoonBit entry point |
| --- | --- |
'''+ '\n'.join(rows)+'\n'
Path('API.md').write_text(text)
print(f'{len(rows)-len(missing)}/{len(rows)} generator entry points mapped; {len(methods)} public Faker methods.')
if missing: raise SystemExit('Missing: '+', '.join(missing))
