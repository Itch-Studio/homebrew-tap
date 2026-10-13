# Itch Studio's Homebrew tap

Mac apps from [Itch Studio](https://itch.studio), for [Homebrew](https://brew.sh).

## TrailSift

[TrailSift](https://trailsift.com/brew) finds the record your Mac keeps of where you've been, in the places other cleaners miss, and clears what you choose. The audit is free and only reads; Pro clears what you pick, after a preview.

```sh
brew install --cask itch-studio/tap/trailsift
```

TrailSift updates itself, so `brew upgrade` leaves it alone unless you add `--greedy`. To remove it with its settings, audit history and clean-up backups:

```sh
brew uninstall --zap --cask trailsift
```

The audit script inside the app is open source at [Itch-Studio/trailsift-audit](https://github.com/Itch-Studio/trailsift-audit).

## Questions

support@trailsift.com
