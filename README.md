# Homebrew Tap for CubicLauncher

Official [Homebrew](https://brew.sh) tap for [CubicLauncher](https://cubiclauncher.org),
the open-source launcher for Minecraft: Java Edition.

## Install

```sh
brew install --cask CubicLauncherDevs/cubiclauncher/cubiclauncher
```

Or tap first and then install:

```sh
brew tap CubicLauncherDevs/cubiclauncher
brew install --cask cubiclauncher
```

Both Apple Silicon and Intel Macs are supported; Homebrew picks the correct
`.dmg` automatically.

## Upgrade

```sh
brew upgrade --cask cubiclauncher
```

## Uninstall

Remove the application only (keeps your instances, settings and downloaded content):

```sh
brew uninstall --cask cubiclauncher
```

Remove the application **and all its data** (instances, settings, themes, skins
and shared content stored in `~/.cubic`, plus WebView caches):

```sh
brew uninstall --zap --cask cubiclauncher
```

## About

| | |
|---|---|
| Version | 35.0.0 |
| Vendor | CubicLauncherDevs |
| Bundle ID | `com.cubiclauncher.launcher` |
| Homepage | https://cubiclauncher.org |
| Source | https://github.com/CubicLauncherDevs/CubicLauncher |

## Maintenance

The cask lives at [`Casks/cubiclauncher.rb`](Casks/cubiclauncher.rb). It is
validated on every push and pull request by the workflow in
[`.github/workflows/ci.yml`](.github/workflows/ci.yml), which runs
`brew style`, `brew audit` and `brew livecheck` on macOS.

To update it for a new release, bump `version` and refresh the two `sha256`
values (arm and intel) from the new `.dmg` assets:

```sh
shasum -a 256 cubiclauncher_<version>_aarch64.dmg
shasum -a 256 cubiclauncher_<version>_x64.dmg
```
