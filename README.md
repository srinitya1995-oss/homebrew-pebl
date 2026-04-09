# homebrew-pebl

Homebrew tap for **[Pebl](https://peblapp.com)** — a free, open-source Mac desktop wellness companion that reminds you to stretch and breathe, and stays quiet during your Zoom calls.

## Install

```bash
brew tap srinitya1995-oss/pebl
brew install --cask pebl
```

That's it. `brew` will download, verify, and install Pebl into `/Applications`. No "damaged app" warnings, no right-click workaround, no manual quarantine fixing — the cask handles it.

## Update

```bash
brew upgrade --cask pebl
```

Or let Pebl's built-in auto-updater do it for you — it checks `pebl-releases` on a schedule and asks your permission before installing new versions.

## Uninstall

```bash
brew uninstall --cask pebl
```

To also remove all local data (preferences, streak history, tip stats):

```bash
brew uninstall --cask --zap pebl
```

## What is Pebl?

A warm orange orb lives in your Mac menu bar. It watches your work rhythm and gently reminds you to stretch, breathe, and take breaks at natural pause points — without interrupting your meetings.

**What makes it different:**
- **Stays quiet during calls.** Pebl detects Zoom, Teams, Meet, Slack, Discord, Webex, Loom, and any fullscreen app. No config. It just respects your meetings.
- **Explains itself.** Every nudge has a "Why now?" link that shows the actual reasoning in plain language.
- **Body-aware.** Optional profile for pregnancy, hypertension, disc issues, neck issues, and vertigo. Filters out contraindicated stretches.
- **Fully local.** Your data lives in a SQLite database on your Mac. Nothing transmitted without your opt-in.
- **Free forever.** Apache 2.0 open source. No account, no subscription, no upsell.

See **[peblapp.com](https://peblapp.com)** for the full story.

## Why a separate tap instead of homebrew-cask?

Pebl is currently ad-hoc signed while we work toward a full Apple Developer ID certificate and notarization. Homebrew-cask's main repo requires signed-and-notarized casks, so we self-host this tap until Pebl is notarized.

Once notarization is set up, we'll submit to homebrew-cask and you'll be able to install via `brew install --cask pebl` without the tap step.

## Security

The cask file is open source. You can audit exactly what `brew install` does: [`Casks/pebl.rb`](./Casks/pebl.rb). The DMG it downloads is hosted on the public [pebl-releases](https://github.com/srinitya1995-oss/pebl-releases) repo and its SHA256 is pinned in this cask file.

To report a vulnerability in Pebl, see [peblapp.com/.well-known/security.txt](https://peblapp.com/.well-known/security.txt) or email hello@peblapp.com.
