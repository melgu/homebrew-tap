# Homebrew Tap

Homebrew formulae and casks for my apps.

| Name | Install | |
|---|---|---|
| [TidalSwift](https://github.com/melgu/TidalSwift) | `brew install --cask melgu/tap/tidalswift` | Tidal client for macOS |
| [TidalSwiftCLI](https://github.com/melgu/TidalSwiftCLI) | `brew install melgu/tap/tidalswift-cli` | `tidal` command line tool and MCP server |

Homebrew adds the tap with the first install. To get updates with a plain `brew upgrade`, trust the tap once, as Homebrew skips taps outside its own otherwise:

```sh
brew trust melgu/tap
```

## Unsigned apps

The apps are signed with a development certificate, but not notarized. The TidalSwift cask removes the quarantine attribute after installing, so macOS opens the app without asking. The `tidal` binary isn't quarantined in the first place, as Homebrew doesn't quarantine formula downloads.
