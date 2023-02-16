#install vim
sudo apt-get install vim -y

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# checkout vimrc to temporary file
TEMPDIR="vimrc-$(date +"%Y-%m-%d_%H%M%S")"
mkdir $TEMPDIR

# get basic vimrc and vimplug section from github
wget https://raw.githubusercontent.com/buddemat/vimrc/main/vimrc.vim --output-document=$TEMPDIR/vimrc
wget https://raw.githubusercontent.com/buddemat/vimrc/main/vimplug.vim --output-document=$TEMPDIR/vimplug

# concat the two
cat $TEMPDIR/vimplug $TEMPDIR/vimrc >> $TEMPDIR/vimcat
    
# backup old vimrc, if exists
mv --backup=t $TEMPDIR/vimcat ~/.vimrc

# install vimplugins, see https://github.com/junegunn/vim-plug
vim -es -u ~/.vimrc -i NONE -c "PlugInstall" -c "qa"

# clean up
rm -r $TEMPDIR
