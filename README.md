# Omarchy Linga Bhairavi Theme

A simple and beautiful theme for Linga Bhairavi Devi, which I built for myself and has become my default theme for Omarchy!

This also includes a simple widget I built which just shows the entire Devi Stuti so I have quick access to it. Built it cuz I struggled to remember the entire Stuti lol. You can hover over each line and it gets highlighted and at the bottom of the widget, there is the youtube link for the official Bhairavi Stuti on the Sounds Of Isha channel.

Here's a quick video for the theme:

https://github.com/user-attachments/assets/6681bed7-0221-4ce9-bc11-2bdb37b3f932

And here's the Stuti Widget:

<img width="1326" height="1080" alt="screenshot-2026-09-02_16-19-18" src="https://github.com/user-attachments/assets/f5529a95-6e26-424c-9907-358fed7c213a" />

## Complete install on Omarchy Quattro

Requires Omarchy Quattro 4.0 or newer.

Paste this command once in a terminal to install and apply the theme with all five
wallpapers along with the Stuti widget:

```bash
curl -fsSL https://raw.githubusercontent.com/KrishJ4856/omarchy-linga-bhairavi-theme/main/install.sh -o /tmp/omarchy-linga-bhairavi-install.sh && bash /tmp/omarchy-linga-bhairavi-install.sh
```

The command is safe to re-run when updating: it refreshes this theme and its
widget, applies the default red sanctum background, and restarts Omarchy Shell.

Or if you just wanna install the theme, then run this command:

```bash
omarchy theme install https://github.com/KrishJ4856/omarchy-linga-bhairavi-theme.git
```

### Installation via GUI

Omarchy's graphical dialog for theme installation, clones and applies the theme,
including all five bundled wallpapers but it does not setup the widget. So if you want to do this via GUI route, then follow these steps:

Install the theme:

Do:
**Super + Space** > **Install** > **Style** > **Theme**

Then paste this repo's link: 
```
https://github.com/KrishJ4856/omarchy-linga-bhairavi-theme
```

Install the widget:

Do:
**Super + Space** > **Setup** > **Plugins** > **Add Plugin**

Then paste the below link, confirm and enable the plugin.
```
https://github.com/KrishJ4856/omarchy-linga-bhairavi-stuti
```

## What this theme looks like

- A warm, high-contrast terminal and application palette
- Gold active borders, focus states, sliders, toggles, and selections
- Dark crimson launcher, menu, popup, control-center, tooltip, notification,
  image-picker, authentication, and lock-screen surfaces
- Compact Hyprland gaps, softened corners, and a subtle temple-red shadow
- A custom transparent lock-screen mark and matching preview
- Five red, black, turmeric, and green Devi wallpapers, with the full-screen
  red sanctum image selected by default

The palette deliberately gives different roles to Devi's colors: crimson for
energy and selection, gold for focus and sacred accents, green for success,
and near-black brown for quiet background depth.

## Wallpapers

The theme includes five prepared wallpapers under:

```text
~/.config/omarchy/themes/linga-bhairavi/backgrounds/
```

They preserve the source aspect ratios and use a softly blurred edge-fill where
needed. The `1-devi-sanctum.jpg` filename sorts first, so Omarchy selects the
full-screen red sanctum image on first install. Use **Super+Ctrl+Space** to choose
among all five. See [ASSETS-LICENSE.md](ASSETS-LICENSE.md) for sources and usage
notes.

## Inspect and customize

See [VISUAL-CHECK.md](VISUAL-CHECK.md) for a surface-by-surface checklist.
`sources/` contains the editable lock-screen SVG artwork. The canonical palette
lives in `colors.toml`, while `shell.*.toml` files tune individual shell surfaces.

Current Omarchy builds support `hyprland.conf`; this theme retains its
`hyprland.lua` override for installations that support Lua theme overrides. If
your installer omits it, the color and shell styling still apply normally.

## License

Theme code and original artwork are MIT-licensed. The photographic wallpapers
retain their respective owners' rights; see [ASSETS-LICENSE.md](ASSETS-LICENSE.md).
