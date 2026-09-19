# Anguria Studio Homebrew tap

Homebrew casks for apps by [Anguria Studio](https://anguria.studio).

## Paguro

[Paguro](https://anguria.studio/paguro) is a native macOS workspace for web apps.

```sh
brew install --cask anguria-studio/tap/paguro
```

Paguro requires macOS 15 or later, on Apple silicon or Intel. The cask installs
the same signed and notarized disk image that the
[GitHub releases](https://github.com/anguria-studio/Paguro/releases) provide.

Paguro updates itself through its built-in updater, so `brew upgrade` leaves it
alone unless you pass `--greedy`.

To remove the app:

```sh
brew uninstall --cask paguro
```

Add `--zap` to remove its data as well. This deletes your services, their
sign-in sessions, and your settings.

## Issues

Report a problem with the app in the
[Paguro repository](https://github.com/anguria-studio/Paguro/issues). Report a
problem with a cask in this repository.
