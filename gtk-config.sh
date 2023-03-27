#!/usr/bin/env bash

# set GTK theme to light for certain applications
# Thunderbird
cp /usr/share/applications/thunderbird.desktop ~/.local/share/applications
sed -i 's/^Exec=\(.*\)$/Exec=env GTK_THEME=Mint-Y-Aqua \1/' ~/.local/share/applications/thunderbird.desktop

# Libre Office (all)
for fname in /usr/share/applications/libreoffice-*.desktop; do
    cp $fname ~/.local/share/applications
done
for fname in ~/.local/share/applications/libreoffice-*.desktop; do
    sed -i 's/^Exec=\(.*\)$/Exec=env GTK_THEME=Mint-Y-Aqua \1/' $fname
done


