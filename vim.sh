#install vim
sudo apt-get install vim -y

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# checkout vimrc to temporary file
FILE="vimrc-$(date +"%Y-%m-%d_%H%M%S")"
# get basic vimrc from github
wget https://raw.githubusercontent.com/buddemat/vimrc/main/vimrc  --output-document=$FILE
# backup old vimrc, if exists
mv --backup=t $FILE ~/.vimrc


# install vimplugins, see https://github.com/junegunn/vim-plug
vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"
