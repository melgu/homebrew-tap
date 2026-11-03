# Homebrew Tap

Homebrew formulae and casks for my apps.

```sh
brew tap melgu/tap
```

| Name | Install | |
|---|---|---|
| [TidalSwift](https://github.com/melgu/TidalSwift) | `brew install --cask tidalswift` | Tidal client for macOS |
| [TidalSwiftCLI](https://github.com/melgu/TidalSwiftCLI) | `brew install tidalswift-cli` | `tidal` command line tool and MCP server |

Or without tapping first: `brew install melgu/tap/tidalswift-cli`.

## Unsigned apps

The apps are signed with a development certificate, but not notarized. The TidalSwift cask removes the quarantine attribute after installing, so macOS opens the app without asking. The `tidal` binary isn't quarantined in the first place, as Homebrew doesn't quarantine formula downloads.
