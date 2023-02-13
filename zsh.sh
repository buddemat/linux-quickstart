sudo apt install fonts-powerline -y
sudo apt-get install zsh -y
sudo chsh -s /usr/bin/zsh $USER # change default shell to zsh
touch ~/.zshrc
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# set theme
sed -i 's/^ZSH_THEME=.*$/ZSH_THEME="agnoster"/' ~/.zshrc

# install and enable plugin zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/^\(plugins=(.*\))$/\1 zsh-autosuggestions)/' ~/.zshrc

# install and enable plugin zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i 's/^\(plugins=(.*\))$/\1 zsh-syntax-highlighting)/' ~/.zshrc
