"""Generate the no-argument template method whitelist from the mapped public API."""
from pathlib import Path
import re
source='\n'.join(p.read_text() for p in Path('.').glob('*.mbt') if p.name!='template_dispatch.mbt')
signatures={}
for m in re.finditer(r'pub fn Faker::(\w+)\(([^{}]*?)\) -> ([\w\[\].@]+) raise\s*\{',source,re.S):
 name,args,ret=m.groups()
 args=re.sub(r'//[^\n]*','',args)
 # Every argument after self must be optional/defaulted; generic methods aren't matched.
 if re.search(r',\s*\w+\s*:',args): continue
 signatures[name]=ret
rows=re.findall(r'\| `([\w.]+)` \| `Faker::(\w+)` \|',Path('API.md').read_text())
lines=[]; keys=[]
for key,name in rows:
 if name not in signatures: continue
 ret=signatures[name]
 if ret=='String': expr=f'self.{name}()'
 elif ret in ['Int','Int32','Int64','Double','Bool','@bigint.BigInt']:expr=f'self.{name}().to_string()'
 else: continue
 lines.append(f'    "{key}" => Some({expr})');keys.append(key)
lines.append('    "science.chemical_element.name" => Some(self.science_chemical_element().name)');keys.append('science.chemical_element.name')
Path('template_dispatch.mbt').write_text('// Generated supported template method whitelist.\n///|\nfn Faker::dispatch_template(self : Faker, key : String) -> String? raise {\n  match key {\n'+'\n'.join(lines)+'\n    _ => None\n  }\n}\n\n///|\nfn template_has_method(key : String) -> Bool {\n  match key {\n'+'\n'.join(f'    "{key}" => true' for key in keys)+'\n    _ => false\n  }\n}\n')
print(f'Generated {len(keys)} template methods.')
