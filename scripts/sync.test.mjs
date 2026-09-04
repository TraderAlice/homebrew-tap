import { test } from 'node:test';
import assert from 'node:assert/strict';
import { validateRelease, validateFormula } from './sync.mjs';

const release = { tag_name: 'v0.91.0', draft: false, prerelease: false };
const stable = { channel: 'stable', version: '0.91.0' };
test('accept stable and unchanged version', () => {
  assert.equal(validateRelease(release, stable, '  version "0.90.2"'), '0.91.0');
  assert.equal(validateRelease(release, stable, '  version "0.91.0"'), '0.91.0');
});
test('reject prerelease, draft, dev, and CDN publication races', () => {
  for (const patch of [{ prerelease: true }, { draft: true }, { tag_name: 'v0.91.0-beta.1' }])
    assert.throws(() => validateRelease({ ...release, ...patch }, stable));
  assert.throws(() => validateRelease(release, { ...stable, channel: 'dev' }));
  assert.throws(() => validateRelease(release, { ...stable, version: '0.90.2' }));
});
test('reject downgrade and malformed existing formula', () => {
  assert.throws(() => validateRelease(release, stable, '  version "0.92.0"'));
  assert.throws(() => validateRelease(release, stable, 'unknown'));
});
const base = 'https://github.com/TraderAlice/OpenAlice/releases/download/v0.91.0';
const targets = ['darwin-arm64', 'darwin-x64', 'linux-arm64', 'linux-x64'].map(key => {
  const [platform, arch] = key.split('-');
  return { platform, arch, sha256: 'a'.repeat(64) };
});
const manifest = { schemaVersion: 1, version: '0.91.0', assetBaseUrl: base, targets };
const formula = '  version "0.91.0"\n' + targets.map(t => `      url "${base}/openalice-cli-0.91.0-${t.platform}-${t.arch}.tar.gz"\n      sha256 "${t.sha256}"`).join('\n');
test('validate four brew targets independently of Windows additions', () => {
  assert.equal(validateFormula(formula, manifest, '0.91.0').length, 4);
  assert.equal(validateFormula(formula, { ...manifest, targets: [...targets, { platform: 'win32', arch: 'x64' }] }, '0.91.0').length, 4);
});
test('reject missing, duplicate, wrong URL/hash/version', () => {
  for (const patch of [{ targets: targets.slice(1) }, { targets: [...targets, targets[0]] }, { assetBaseUrl: 'https://example.com' }, { version: '0.90.2' }])
    assert.throws(() => validateFormula(formula, { ...manifest, ...patch }, '0.91.0'));
  assert.throws(() => validateFormula(formula.replace('a'.repeat(64), 'b'.repeat(64)), manifest, '0.91.0'));
});
