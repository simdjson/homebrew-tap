# simdjson Homebrew tap

Formulas for tools of the [simdjson](https://github.com/simdjson) project.

```
brew install simdjson/tap/sjq
```

- [sjq](https://github.com/simdjson/sjq): a jq-compatible command-line JSON
  processor built on simdjson (macOS, Linux).

The formulas install the release binaries. The `update` workflow follows
sjq's releases: every six hours (or when run by hand), it regenerates the
formula of a new release, checks it with `brew audit`, `brew install` and
`brew test`, and commits it.
