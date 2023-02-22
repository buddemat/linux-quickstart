# install MS TrueType fonts, without EULA prompt, see echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
sudo apt-get install ttf-mscorefonts-installer
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
sudo apt-get install ttf-mscorefonts-installer

# Install additional fonts
git clone https://github.com/hbin/top-programming-fonts
cd top-programming-fonts
bash install.sh
cd -
rm -r top-programming-fonts
