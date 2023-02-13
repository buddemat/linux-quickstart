sudo apt install fonts-powerline -y
sudo apt-get install zsh -y
sudo chsh -s /usr/bin/zsh $USER # change default shell to zsh
touch ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/^ZSH_THEME=.*$/ZSH_THEME="agnoster"/' ~/.zshrc

