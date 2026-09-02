# Omarchy Linga Bhairavi Theme

An unofficial, devotional Omarchy theme inspired by Linga Bhairavi: deep temple
blacks, Devi crimson, kumkum red, turmeric gold, and restrained sacred green.

![Theme preview](preview.png)

This community project is not affiliated with or endorsed by Isha Foundation.

## Complete install on Omarchy Quattro

Requires Omarchy Quattro 4.0 or newer.

Paste this once in a terminal to install and apply the theme with all five
wallpapers, then install and enable the Stuti widget:

```bash
curl -fsSL https://raw.githubusercontent.com/KrishJ4856/omarchy-linga-bhairavi-theme/main/install.sh -o /tmp/omarchy-linga-bhairavi-install.sh && bash /tmp/omarchy-linga-bhairavi-install.sh
```

The command is safe to re-run when updating: it refreshes this theme and its
widget, applies the default red sanctum background, and restarts Omarchy Shell.

### Why the graphical Theme installer is not enough

Quattro's **Super+Space → Install → Theme** action clones and applies the theme,
including all five bundled wallpapers. By design it does not execute repository
scripts or install bar plugins, so only the Stuti widget is omitted in that
route. This is an Omarchy installer boundary, not a missing theme setting; use
the complete command above when you want the widget installed automatically.

For a theme-only install, the graphical dialog or this command still works:

```bash
omarchy theme install https://github.com/KrishJ4856/omarchy-linga-bhairavi-theme.git
```

## What it changes

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

## Minimal Stuti widget

The companion in `extras/stuti-widget` adds a lotus to the right side of the
bar. Clicking it opens only the Stuti text and a **Sounds of Isha ↗** link.

The complete installer above handles the widget automatically. For a manual
theme-only installation, copy and enable it with:

```bash
mkdir -p ~/.config/omarchy/plugins/krish.linga-bhairavi-stuti
cp -a ~/.config/omarchy/themes/linga-bhairavi/extras/stuti-widget/. \
  ~/.config/omarchy/plugins/krish.linga-bhairavi-stuti/
omarchy-shell shell rescanPlugins
```

Then enable it in the right status cluster:

```bash
omarchy plugin enable krish.linga-bhairavi-stuti --section right --after omarchy.tray
```

Those copy commands are safe to run again after updating the theme; they refresh
the installed widget without nesting an extra directory.

The included transcription contains the 33 qualities, the three concluding
sacred-name lines, and the final closing line. The widget also links to Isha's
[official Stuti page](https://isha.sadhguru.org/linga-bhairavi/in/en/sadhana/linga-bhairavi-stuti)
and the official [Sounds of Isha recording](https://www.youtube.com/watch?v=qEZVkptPHpo).

Omarchy plugins run with your user permissions. Review the small QML file
before enabling it, as you should with any third-party plugin.

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
