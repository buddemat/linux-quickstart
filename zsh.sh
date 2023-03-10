#!/usr/bin/env bash

# install packages needed for later config/plugins
sudo apt-get install fonts-powerline -y
sudo apt-get install ripgrep -y
sudo apt-get install pylint -y
sudo apt-get install fzf -y
sudo apt-get install zsh -y
sudo apt-get install bat -y


# change default shell to zsh
sudo chsh -s /usr/bin/zsh $USER 
touch ~/.zshrc

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# set theme
sed -i 's/^ZSH_THEME=.*$/ZSH_THEME="agnoster"/' ~/.zshrc

# enable auto update
sed -i "s/^# \(zstyle ':omz:update' mode auto\)/\1/" ~/.zshrc

# add alias for batcat at end of file
sed -i "/^# alias/aalias bat='batcat'" ~/.zshrc

# add vte fix for tilix (see https://gnunn1.github.io/tilix-web/manual/vteconfig/)
echo "\n#vte fix for tilix (see https://gnunn1.github.io/tilix-web/manual/vteconfig/)\nif [ \$TILIX_ID ] || [ \$VTE_VERSION ]; then\n        source /etc/profile.d/vte-2.91.sh\nfi" >> ~/.zshrc

# enable plugin fzf
sed -i 's/^\(plugins=(.*\))$/\1 ripgrep pylint)/' ~/.zshrc

# enable plugin fzf
sed -i '/^plugins=(.*)$/aexport DISABLE_FZF_AUTO_COMPLETION="true"' ~/.zshrc
sed -i '/^plugins=(.*)$/aexport DISABLE_FZF_KEY_BINDINGS="true"' ~/.zshrc
sed -i "/^plugins=(.*)$/aexport FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'" ~/.zshrc
sed -i "/^plugins=(.*)$/aexport FZF_BASE=$(which fzf)" ~/.zshrc
sed -i "/^source \$ZSH\/oh-my-zsh.sh/asource /usr/share/doc/fzf/examples/completion.zsh" ~/.zshrc
sed -i "/^source \$ZSH\/oh-my-zsh.sh/asource /usr/share/doc/fzf/examples/key-bindings.zsh" ~/.zshrc

# install and enable plugin zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/^\(plugins=(.*\))$/\1 zsh-autosuggestions)/' ~/.zshrc

# install and enable plugin zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i 's/^\(plugins=(.*\))$/\1 zsh-syntax-highlighting)/' ~/.zshrc
