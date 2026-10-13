// Load the checked-out TypeScript data directly, without npm dependencies.
import { registerHooks, stripTypeScriptTypes } from 'node:module';
import { readFileSync, existsSync, statSync } from 'node:fs';
import { fileURLToPath } from 'node:url';
registerHooks({
  resolve(specifier, context, nextResolve) {
    if (specifier.startsWith('.') && context.parentURL) {
      let url = new URL(specifier, context.parentURL);
      let path = fileURLToPath(url);
      if (existsSync(path) && statSync(path).isDirectory()) url = new URL(url.href + '/index.ts');
      else if (existsSync(path + '.ts')) url = new URL(url.href + '.ts');
      return nextResolve(url.href, context);
    }
    return nextResolve(specifier, context);
  },
  load(url, context, nextLoad) {
    if (url.endsWith('.ts')) return { format: 'module', source: stripTypeScriptTypes(readFileSync(new URL(url), 'utf8'), { mode: 'transform' }), shortCircuit: true };
    return nextLoad(url, context);
  }
});
