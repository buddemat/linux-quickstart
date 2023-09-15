sudo apt-get install wget -y

cd /tmp

# get filename of latest Anaconda 
FILENAME=$(wget -O - https://www.anaconda.com/distribution/ 2>/dev/null | sed -ne 's@.*https:\/\/repo\.anaconda\.com\/archive\/\(Anaconda3-.*-Linux-x86_64\.sh\)\">64-Bit (x86) Installer.*@\1@p')
wget https://repo.anaconda.com/archive/$FILENAME -O $FILENAME
# TODO auto check hash, can be gotton from https://docs.anaconda.com/anaconda/install/hashes/all/

#install
bash $FILENAME -b
rm $FILENAME

#init 
~/anaconda3/bin/conda init bash
~/anaconda3/bin/conda init zsh

source ~/.bashrc

# update
yes | conda update conda

# create standard virtual environment, Python 3.11 not yet available
conda create -n dev-std-env python=3.10 anaconda
# install additional packages
conda activate dev-std-env
pip3 install togglwrapper  
yes | conda install -n dev-std-env jira
yes | conda install -n dev-std-env future

# pip tools
pip install pdfCropMargins --upgrade

