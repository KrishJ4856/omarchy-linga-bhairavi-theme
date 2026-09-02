#!/usr/bin/env bash

set -euo pipefail

readonly THEME_REPOSITORY="https://github.com/KrishJ4856/omarchy-linga-bhairavi-theme.git"
readonly THEME_NAME="linga-bhairavi"
readonly PLUGIN_ID="krish.linga-bhairavi-stuti"
readonly THEME_DIR="${HOME}/.config/omarchy/themes/${THEME_NAME}"
readonly PLUGIN_DIR="${HOME}/.config/omarchy/plugins/${PLUGIN_ID}"

if ! command -v omarchy >/dev/null 2>&1; then
  printf 'Missing required command: omarchy\n' >&2
  exit 1
fi

printf '\nInstalling and applying the Linga Bhairavi theme…\n'
omarchy theme install "${THEME_REPOSITORY}"

printf '\nInstalling the Stuti bar widget…\n'
mkdir -p "${PLUGIN_DIR}"
cp -a "${THEME_DIR}/extras/stuti-widget/." "${PLUGIN_DIR}/"

# Rescanning is harmless if the shell is between restarts. Enabling below will
# still register the widget, and the final shell restart loads it visibly.
omarchy-shell shell rescanPlugins >/dev/null 2>&1 || true
omarchy plugin enable "${PLUGIN_ID}" --section right --after omarchy.tray

omarchy restart shell

printf '\nLinga Bhairavi setup is complete.\n'
printf '• Theme applied: Linga Bhairavi\n'
printf '• Five bundled wallpapers: Super+Ctrl+Space\n'
printf '• Stuti widget: lotus in the right status cluster\n'
