# homebrew-cntrdct

Homebrew tap for [cntrdct](https://github.com/ktrysmt/cntrdct), an
evidence-based contradiction linter for Rust and Python.

## Install

```sh
brew tap ktrysmt/cntrdct
brew install cntrdct
```

## What you get

- `cntrdct` — the main binary (`scan`, `calibrate`, `eval` subcommands).
- `cargo-cntrdct` — the `cargo cntrdct ...` shim.

## Supported platforms

The tap pulls pre-built archives from the cntrdct GitHub Releases page.
Currently shipped:

- macOS (Apple Silicon, `aarch64-apple-darwin`)
- Linux x86_64 (`x86_64-unknown-linux-gnu`)
- Linux aarch64 (`aarch64-unknown-linux-gnu`)

Windows is shipped as a `.zip` from the same Releases page but is not
served through this tap (Homebrew on Windows is not a target).

## Updating

The formula is bumped automatically on each `v*` tag in the upstream
repository (see `.github/workflows/homebrew.yml` over there). Manual
edits to `Formula/cntrdct.rb` are normally not required.

## License

MIT — same as cntrdct itself.
