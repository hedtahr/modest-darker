# Modest Darker

A tweaked **Modest Dark** theme for Zed.

- **Syntax** — Modest Dark (with purple accents)
- **UI / panels** — darker, softer surfaces
- **Rounded, outlined cards** like Matte Black
- **Borderless variant** included: `Modest Darker (Borderless)` blends all panel borders into the background

## Palette

Near-black `#0e0e0e` background with a **two-tier luminance budget** — the eye
cares about light dose (luminance × area), not peak brightness alone:

- **Dominant greys** (body text, UI labels) stay low — 0.40 relative luminance
- **Sparse tokens** (types, strings, links, diff markers) stay chromatic and may
  sit higher — up to 0.52 — because they cover far fewer pixels
- **Comments** — `#444444`, italic (Zed/Neovim/Obsidian; terminals have no comment tier)

| role | color | Y |
|---|---|---|
| text / editor fg | `#A4AAAF` | 0.40 |
| text muted | `#A4AAAF` at 55% alpha | — |
| dim grey (variables, hints) | `#99A2B1` | 0.36 |
| comments | `#444444` | 0.06 |
| accent, keywords, cursor | `#ca72e4` | 0.30 |
| functions | `#5ab0f6` | 0.40 |
| types | `#e3b868` | 0.52 |
| strings | `#97ca72` | 0.50 |
| numbers, constants | `#d99a5e` | 0.39 |
| properties, tags | `#e06c75` | 0.28 |
| operators, punctuation | `#56b6c2` | 0.39 |
| links | `#f5b246` | 0.52 |
| headings | `#e95678` at 90% alpha | 0.25 |
| bold / italic | `#eaac8b` / `#f3b080` | 0.49 / 0.52 |
| errors, deleted lines | `#ff616e` | 0.31 |
| added, created lines | `#8bd152` | 0.52 |
| modified | `#deba75` | 0.52 |
| borders | `#2b2b2b` | 0.02 |

The Zed themes, Ghostty, Neovim and Obsidian ports all share this palette
(Obsidian keeps its own darker greys for sidebar/UI text).

## Install (development)

Link the extension so Zed picks it up:

```sh
# macOS / Linux
ln -s "$(pwd)" ~/.local/share/zed/extensions/modest-darker
```

Then reopen Zed and select **Modest Darker** (or **Modest Darker (Borderless)**) in the theme selector.

## Ports

### Ghostty

```sh
mkdir -p ~/.config/ghostty/themes
cp terminal/ghostty/themes/modest-darker ~/.config/ghostty/themes/
```

Then in `~/.config/ghostty/config`:

```text
theme = modest-darker
```

### Neovim (no plugin manager)

```sh
mkdir -p ~/.config/nvim/colors
cp nvim/colors/modest_darker.lua ~/.config/nvim/colors/
```

Then in `init.lua`: `vim.cmd.colorscheme("modest_darker")`.

### Yazi

```sh
mkdir -p ~/.config/yazi/flavors
cp -r terminal/yazi/flavors/modest-darker.yazi ~/.config/yazi/flavors/
```

Then in `~/.config/yazi/theme.toml`: `[flavor]` → `dark = "modest-darker"`.

### Obsidian

Copy the theme into your vault:

```sh
VAULT="/path/to/vault"
mkdir -p "$VAULT/.obsidian/themes/Modest Darker"
cp obsidian/theme.css obsidian/manifest.json "$VAULT/.obsidian/themes/Modest Darker/"
```

Then **Settings → Appearance → Theme → Modest Darker** and **Accent color → `#ca72e4`**.
The theme is dark-only, so use Dark mode.

The Obsidian port keeps the near-black Zed background and uses deliberately non-vibrant text/syntax.

Optional snippets: `obsidian/snippets/modest-darker-borderless.css` (borders blend into the background) and `obsidian/snippets/modest-darker-fonts.css` (Atkinson Hyperlegible / Lexend + JetBrains Mono, lighter weight).

Borderless variant: copy `obsidian/snippets/*.css` into `<vault>/.obsidian/snippets/` and enable them under **Settings → Appearance → CSS snippets**.

## Publish

```sh
zed extension publish
```
