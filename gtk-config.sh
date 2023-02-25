#!/usr/bin/env bash

# set GTK theme to light for certain applications
# Thunderbird
cp /usr/share/applications/thunderbird.desktop ~/.local/share/applications
sed -i 's/^Exec=\(.*\)$/Exec=env GTK_THEME=Mint-Y-Aqua \1/' ~/.local/share/applications/thunderbird.desktop
