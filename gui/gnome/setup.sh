#!/bin/bash
set -e

# Disable the application switcher.
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"

# Enable the window switcher.
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab', '<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward  "['<Alt><Shift>Tab', '<Super><Shift>Tab']"

# Set window switcher to display windows across all workspaces.
gsettings set org.gnome.shell.window-switcher current-workspace-only false
