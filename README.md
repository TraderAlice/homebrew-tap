# OpenAlice Homebrew tap

Native OpenAlice CLI for macOS and Linux, on Apple Silicon/ARM64 and x64.

```sh
brew install traderalice/tap/openalice
```

The formula downloads the existing stable release binary. It does not compile
OpenAlice, install Electron, or install an agent runtime such as Pi or Claude.

```sh
brew update
brew upgrade traderalice/tap/openalice
brew uninstall traderalice/tap/openalice
```

Stop a running instance with `openalice down` before upgrading. Your OpenAlice
data and AliceProjects are not removed by uninstalling the package.

## Release updates

OpenAlice's main repository owns builds, tests, version selection, and releases.
This repository copies the **unchanged** `openalice.rb` asset from the latest
stable [OpenAlice release](https://github.com/TraderAlice/OpenAlice/releases/latest),
after its version matches the public stable CDN manifest and the four Homebrew
archive hashes have been verified. Beta/dev releases never update this tap.

The small **Sync stable formula** workflow checks hourly at minute 23 and can
also be run manually from Actions. It uses only this repository's built-in
`GITHUB_TOKEN`; no cross-repository PAT, signing secret, dependency installation,
or compilation is needed. Unchanged versions exit without archive downloads or
commits. GitHub may delay schedules, and disables schedules after 60 days of
repository inactivity; maintainers can re-enable the workflow in Actions and run
it manually. The main repository's legacy token-based tap writer stays disabled:
there is only one automatic writer.

For local verification (Node.js 22+):

```sh
node --test scripts/sync.test.mjs
node scripts/sync.mjs          # inspect and verify, without writing
node scripts/sync.mjs --write  # update Formula/openalice.rb after verification
```

Do not hand-edit the generated formula. Fix its generator in OpenAlice and
publish a new stable release. A same-version byte change or downgrade is rejected.
