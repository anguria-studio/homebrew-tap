# Anguria Studio Homebrew tap

Homebrew casks for apps by [Anguria Studio](https://anguria.studio).

## Moppo

[Moppo](https://anguria.studio/moppo/) is a disk storage and cleanup tool.

To install Moppo:

```sh
brew install --cask anguria-studio/tap/moppo
```

Use the full cask name in each command.
Moppo requires macOS 15 or later, on Apple silicon or Intel.
The cask installs the signed and notarized disk image from the
[Moppo releases](https://github.com/anguria-studio/Moppo/releases).

Moppo uses Sparkle for app updates.
To include Moppo in a Homebrew upgrade, use `--greedy`:

```sh
brew upgrade --cask --greedy anguria-studio/tap/moppo
```

To remove Moppo:

```sh
brew uninstall --cask anguria-studio/tap/moppo
```

The cask preserves settings, History, and removal records.
Removal records are necessary for Put Back.

## Paguro

[Paguro](https://anguria.studio/paguro) is a native macOS workspace for web apps.

```sh
brew install --cask anguria-studio/tap/paguro
```

Use the full name, as shown. Homebrew then trusts this one cask without an
extra step. To use the short name `paguro` in later commands, trust the tap
first with `brew trust anguria-studio/tap`.

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

Report a Moppo app problem in the
[Moppo repository](https://github.com/anguria-studio/Moppo/issues).
Report a Paguro app problem in the
[Paguro repository](https://github.com/anguria-studio/Paguro/issues).
Report a cask problem in this repository.
