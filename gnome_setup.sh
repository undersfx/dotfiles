#!/usr/bin/env bash
# script: gnome_setup.sh
# author: undersfx


# --- Setup do Ambiente (Gnome Only)

echo "Gnome Setup"

# Instalar gnome tweaks
sudo apt install gnome-tweaks -y

# Instalar GNOME extensions
# Extensões:
# Sound Input & Output Device Chooser
# Multimonitor Add-on
sudo apt install gnome-shell-extensions chrome-gnome-shell -y

# Fix Scroll Lock bug with brazillian keyboard
sed -i 's/modifier_map Mod3   { Scroll_Lock }\;/\#modifier_map Mod3   { Scroll_Lock }\;/' /usr/share/X11/xkb/symbols/br
