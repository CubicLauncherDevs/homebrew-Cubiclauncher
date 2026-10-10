# Homebrew Tap para CubicLauncher

Tap oficial de [Homebrew](https://brew.sh) para [CubicLauncher](https://cubiclauncher.org),
el launcher de código abierto para Minecraft: Java Edition.

## Instalación

```sh
brew install --cask CubicLauncherDevs/cubiclauncher/cubiclauncher
```

O primero añade el tap y luego instala:

```sh
brew tap CubicLauncherDevs/cubiclauncher
brew install --cask cubiclauncher
```

Se admiten Macs con Apple Silicon e Intel; Homebrew elige automáticamente el
`.dmg` correcto.

## Actualización

```sh
brew upgrade --cask cubiclauncher
```

## Desinstalación

Elimina solo la aplicación (conserva tus instancias, ajustes y contenido descargado):

```sh
brew uninstall --cask cubiclauncher
```

Elimina la aplicación **y todos sus datos** (instancias, ajustes, temas, skins y
contenido compartido guardados en `~/.cubic`, además de las cachés del WebView):

```sh
brew uninstall --zap --cask cubiclauncher
```

## Acerca de

| | |
|---|---|
| Versión | 35.0.0 |
| Proveedor | CubicLauncherDevs |
| Bundle ID | `com.cubiclauncher.launcher` |
| Sitio web | https://cubiclauncher.org |
| Código fuente | https://github.com/CubicLauncherDevs/CubicLauncher |

## Mantenimiento

El cask vive en [`Casks/cubiclauncher.rb`](Casks/cubiclauncher.rb). Se valida en
cada push y pull request con el workflow de
[`.github/workflows/ci.yml`](.github/workflows/ci.yml), que ejecuta
`brew style`, `brew audit` y `brew livecheck` en macOS.

Para actualizarlo a una nueva versión, cambia `version` y refresca los dos valores
`sha256` (arm e intel) a partir de los nuevos assets `.dmg`:

```sh
shasum -a 256 cubiclauncher_<version>_aarch64.dmg
shasum -a 256 cubiclauncher_<version>_x64.dmg
```
