<div align="center">

# 🍺 homebrew-cue

### The official Homebrew tap for **Cue** — on your terminal *and* your Mac.

**Pick a time. Skip the fifteen-message thread.**

[![cue-cli](https://img.shields.io/github/v/release/vegardlu/cue-cli?label=cue-cli&color=7C5CFF&logo=go&logoColor=white)](https://github.com/vegardlu/cue-cli/releases)
[![Cue for Mac](https://img.shields.io/github/v/release/vegardlu/homebrew-cue?label=Cue%20for%20Mac&color=5B5BD6&logo=apple&logoColor=white)](https://github.com/vegardlu/homebrew-cue/releases)
[![Platforms](https://img.shields.io/badge/platforms-macOS%20%C2%B7%20Linux-444?logo=linux&logoColor=white)](#-cue-cli)
[![License](https://img.shields.io/badge/license-MIT-22c55e)](https://github.com/vegardlu/cue-cli/blob/main/LICENSE)
[![Homebrew](https://img.shields.io/badge/install-brew%20tap-FBB040?logo=homebrew&logoColor=white)](#-quick-install)

</div>

---

## What is Cue?

[**Cue**](https://getcue.net) is a lightweight event-coordination app. A small group just **types when they're free, in plain text** — "after 6 most days", "not Thursday", "weekend works" — and Gemini reads the room and **continuously proposes the best time**. No grids, no polls, no doodle-style spreadsheets. When everyone's said their piece, you finalize and it lands on calendars.

It lives on [iOS](https://apps.apple.com/app/cue-event-planner/id6741188498), the [web](https://getcue.net) — and, through this tap, **your command line and your Mac desktop**.

---

## 📦 What this tap delivers

One `brew tap`, two first-class clients. Pick one, or grab both.

| | 🖥️ **Cue CLI** | 🍎 **Cue for Mac** |
|---|---|---|
| **What** | Drive Cue from the terminal — scriptable, agent-friendly | A fully native SwiftUI desktop app |
| **Homebrew kind** | Formula → `cue-cli` | Cask → `cue-desktop` |
| **Installs** | the `cue` binary | `Cue.app` |
| **Platforms** | macOS & Linux · Intel & Apple Silicon | macOS Sequoia (15)+ · universal |
| **Install** | `brew install vegardlu/cue/cue-cli` | `brew install --cask vegardlu/cue/cue-desktop` |
| **Updates** | `brew upgrade cue-cli` | Self-updates via **Sparkle** ⚡ |
| **Source** | [vegardlu/cue-cli](https://github.com/vegardlu/cue-cli) (public) | DMGs hosted right here in [Releases](https://github.com/vegardlu/homebrew-cue/releases) |

---

## ⚡ Quick install

```bash
# Add the tap once…
brew tap vegardlu/cue

# …then install whichever you want:
brew install cue-cli              # the command-line client
brew install --cask cue-desktop   # the native Mac app
```

Prefer one-liners? They work without tapping first:

```bash
brew install vegardlu/cue/cue-cli
brew install --cask vegardlu/cue/cue-desktop
```

---

## 🖥️ Cue CLI

Everything Cue does, from a prompt — built for humans **and** for AI agents. Real OAuth, Keychain-backed tokens, colored tables, shell completions, and a live SSE stream.

```bash
cue auth login          # Sign in with Google or email (OTP)
cue events list         # See your events
cue events create       # Interactive create — with AI commentator & weather toggles
cue respond 42          # Accept/decline and pick the times that work
cue watch               # Stream live updates as they happen
```

<details>
<summary><b>The full command map</b></summary>

| Group | Highlights |
|---|---|
| `cue auth` | `login` (Google / `--email` OTP) · `logout` · `status` |
| `cue events` | `list` · `show` · `create` · `edit` · `cancel` · `delete` · `reopen` · `finalize` · `invite` · `link` · `join` · `add-time` · `remove-time` · `commentator` · `weather` |
| `cue respond <id>` | accept/decline + time selection (`--accept --times 1,3`, `--decline`, `--rejoin`) |
| `cue notifications` | list · `count` · `read` · `read-all` · `read-event` |
| `cue users` | `me` · `search` · `edit-name` · `upload-picture` · `delete-account` |
| `cue watch` | live SSE stream (`--event <id>` to filter) |
| `cue completion` | `zsh` · `fish` · `bash` scripts |

</details>

**Built for automation.** Every interactive command has non-interactive flags, `--json` makes output parseable (and auto-engages when piped), `cue watch --json` emits JSONL, and exit codes are meaningful (`2` = auth required, `3` = not found, `4` = validation, `5` = network). Point an AI agent at it and it just works.

**Cross-platform.** The formula ships native binaries for **macOS** (Intel + Apple Silicon) and **Linux** (amd64 + arm64), with **zsh / fish / bash** completions installed automatically.

> [!NOTE]
> The `cue` binary name overlaps with the [CUE language](https://cuelang.org/) CLI. If you have both, reach Cue at `$(brew --prefix)/opt/cue-cli/bin/cue` or set a shell alias. (Homebrew installs the formula as `cue-cli`, so the two never clobber each other.)

---

## 🍎 Cue for Mac

Not a web page in a window. A **real Mac app**, written the way Mail, Messages, and Calendar are — Swift 6, SwiftUI, and Liquid Glass.

- 🪟 **A true three-column app** — `NavigationSplitView` sidebar (Events · Chats · Photos · Notifications), tear-off windows, and full keyboard navigation.
- 📊 **A glanceable menu-bar extra** — your upcoming agenda and unread count, live, with no window open.
- 💬 **The whole chat surface** — event chats, DMs, and channels on one canvas: reactions, edits, typing indicators, read receipts, @-mentions, and AI participants.
- 🖼️ **A native photo & video library** — date-bucketed grid, drag-drop / paste upload, an immersive lightbox, Quick Look, and a 30-day Trash.
- 🔔 **System-native notifications** — Dock badge, menu-bar badge, local banners, and APNs push for the quit-app case.
- 🗓️ **Add to Calendar** (EventKit), **MapKit** location search, **ShareLink** invites, and `cue://` deep links.
- ⚡ **Auto-updating** — signed with a Developer ID, notarized, and kept current by **Sparkle 2** (see below). No App Store required.

**Requirements:** macOS **Sequoia (15)** or later. The app is universal (Apple Silicon + Intel), signed, and notarized — Gatekeeper-clean on first launch.

```bash
brew install --cask vegardlu/cue/cue-desktop
open -a Cue
```

---

## 🔄 How updates flow

| | Mechanism |
|---|---|
| **CLI** | `brew upgrade cue-cli`. The CLI also nudges you (once/day, stderr only) when a newer release exists — no auto-download. |
| **Mac app** | Self-updates via **Sparkle** against the EdDSA-signed [`appcast.xml`](https://vegardlu.github.io/homebrew-cue/appcast.xml), served from GitHub Pages. Use **Cue ▸ Check for Updates…**, the **Settings ▸ Updates** tab, or `brew upgrade --cask cue-desktop` — the cask declares `auto_updates true`, so brew defers to Sparkle. |

---

## 🗂️ Tap anatomy

Everything Mac-distribution lives here because the source monorepo is private — so the DMGs need a public home.

```
homebrew-cue/
├── cue-cli.rb              # Formula — the `cue` command-line client (GoReleaser-managed)
├── Casks/
│   └── cue-desktop.rb      # Cask — the native macOS app (Cue.app)
├── appcast.xml             # Sparkle auto-update feed, served via GitHub Pages
└── README.md               # you are here
```

Plus the **[Releases](https://github.com/vegardlu/homebrew-cue/releases)** tab, where each `cue-macos-vX.Y.Z` tag carries the notarized **DMG** that both the cask and the Sparkle feed point at.

---

## 🧹 Uninstall

```bash
brew uninstall cue-cli                      # remove the CLI
brew uninstall --cask --zap cue-desktop     # remove the Mac app + its data
brew untap vegardlu/cue                     # drop the tap entirely
```

`--zap` also clears the app's Application Support, caches, and preferences.

---

## 🌐 The Cue ecosystem

| | |
|---|---|
| 🌍 **Web** | [getcue.net](https://getcue.net) |
| 📱 **iOS** | [App Store](https://apps.apple.com/app/cue-event-planner/id6741188498) |
| 🍎 **Mac** | this tap → `cue-desktop` · [download page](https://getcue.net/mac) |
| 🖥️ **CLI** | this tap → `cue-cli` · [docs](https://getcue.net/cli) |

---

<div align="center">

**Made for groups who'd rather meet up than schedule the meet-up.**

[getcue.net](https://getcue.net) · [CLI docs](https://getcue.net/cli) · [Mac download](https://getcue.net/mac)

</div>
