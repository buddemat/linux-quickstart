sudo apt-get install tilix -y

# make tilix default terminal
sudo update-alternatives --set x-terminal-emulator /usr/bin/tilix.wrapper # (ubuntu)
gsettings set org.cinnamon.desktop.default-applications.terminal exec /usr/bin/ # (mint)

# fix context "open with vim" opening in wrong terminal, see https://unix.stackexchange.com/a/594323/445799
cp /usr/share/applications/vim.desktop ~/.local/share/applications/
sed -i /s/^Exec=vim %F/Exec=tilix -e "vim %F"/' ~/.local/share/applications/vim.desktop 

