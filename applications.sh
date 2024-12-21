
# Image editing
#sudo apt-get install gimp -y
flatpak install flathub org.gimp.GIMP
flatpak install flathub org.gimp.GIMP.Plugin.GMic/x86_64/2-40

sudo apt-get install inkscape -y

# LaTeX
sudo apt-get install texlive-latex-base -y
sudo apt-get install texlive-latex-recommended -y
sudo apt-get install texlive-latex-extra -y
sudo apt-get install texlive-lang-german -y

# QGIS, installs a lot of dependencies
sudo apt-get install qgis -y

## Flatpack

# Flatseal flatpak app permission manager
flatpak install flathub com.github.tchx84.Flatseal

# Handbrake
flatpak install flathub fr.handbrake.ghb

# Postman
flatpak install flathub com.getpostman.Postman

# dbeaver
flatpak install flathub io.dbeaver.DBeaverCommunity

# Zoom
flatpak install flathub us.zoom.Zoom

# MS Teams is deprecated
#flatpak install flathub com.microsoft.Teams

# RocketChat
flatpak install flathub chat.rocket.RocketChat
flatpak override chat.rocket.RocketChat --user --filesystem=/home/:ro

# Shotcut
flatpak install flathub org.shotcut.Shotcut

# Audacity
flatpak install flathub org.audacityteam.Audacity

# Opera
flatpak install flathub com.opera.Opera

# Xournal++ 
sudo apt-get install xournalpp -y

# draw.io
flatpak install flathub com.jgraph.drawio.desktop
