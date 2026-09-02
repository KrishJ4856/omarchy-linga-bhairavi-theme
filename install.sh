#!/usr/bin/env bash

set -euo pipefail

readonly THEME_REPOSITORY="https://github.com/KrishJ4856/omarchy-linga-bhairavi-theme.git"
readonly PLUGIN_REPOSITORY="https://github.com/KrishJ4856/omarchy-linga-bhairavi-stuti.git"
readonly PLUGIN_ID="krish.linga-bhairavi-stuti"
readonly PLUGIN_DIR="${HOME}/.config/omarchy/plugins/${PLUGIN_ID}"

if ! command -v omarchy >/dev/null 2>&1; then
  printf 'Missing required command: omarchy\n' >&2
  exit 1
fi

printf '\nInstalling and applying the Linga Bhairavi theme…\n'
omarchy theme install "${THEME_REPOSITORY}"

printf '\nInstalling the Stuti bar widget…\n'
if [[ -d "${PLUGIN_DIR}/.git" ]]; then
  omarchy plugin update "${PLUGIN_ID}" --yes
elif [[ -e "${PLUGIN_DIR}" ]]; then
  # Migrate installations made by the theme's original copy-based installer.
  omarchy plugin remove "${PLUGIN_ID}" --yes
  omarchy plugin add "${PLUGIN_REPOSITORY}" --enable --yes
else
  omarchy plugin add "${PLUGIN_REPOSITORY}" --enable --yes
fi

omarchy plugin enable "${PLUGIN_ID}" --section right --after omarchy.tray

omarchy restart shell

printf '\nLinga Bhairavi setup is complete.\n'
printf '• Theme applied: Linga Bhairavi\n'
printf '• Five bundled wallpapers: Super+Ctrl+Space\n'
printf '• Stuti widget: lotus in the right status cluster\n'
