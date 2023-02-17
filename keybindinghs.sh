#!/usr/bin/env bash

# custom mint  keybindings, see https://unix.stackexchange.com/questions/596308/custom-keybindings-for-linux-mint-20-via-gsettings

# tiix in quake mode
if (dpkg-query -W -f='${Status}' tilix 2>/dev/null | grep -c "ok installed"); then 
    dconf write /org/cinnamon/desktop/keybindings/custom-list "['custom0']"
    dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom0/command "'tilix --quake'"
    dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom0/name "'tilixquake'"
    dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom0/binding "['<Control>Escape']"
fi

# xkill keybinding for ctrl + alt + escape
dconf write /org/cinnamon/desktop/keybindings/custom-list "['custom0', 'custom1']"
dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom1/command "'xkill'"
dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom1/name "'xkill'"
dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom1/binding "['<Control><Alt>Escape']"

# flameshot
if (dpkg-query -W -f='${Status}' flameshot 2>/dev/null | grep -c "ok installed"); then 
    dconf write /org/cinnamon/desktop/keybindings/custom-list "['custom0', 'custom1', 'custom2']"
    dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom2/command "'flameshot gui'"
    dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom2/name "'flameshot'"
    dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom2/binding "['<Control><Alt>s']"
fi
