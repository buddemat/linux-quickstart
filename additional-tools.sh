# apt initial package info update
sudo apt-get update

# shell tree command
sudo apt-get install tree -y
# Markdown preview
#sudo apt-get install grip -y
# better: pip version, moved to other file 

# Imagemagick
sudo apt-get install imagemagick -y

# java 17
sudo apt-get install -y openjdk-17-jdk

# node / npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
source ~/.bash_profile
nvm install --lts

## pnpm
npm install -g pnpm

#elasticdump
npm install elasticdump -g

# nmap
sudo apt-get install -y nmap

# wireguard
sudo apt-get install -y wireguard

# traceroute
sudo apt-get install -y traceroute

# nginx
sudo apt-get install -y nginx

# GDAL
sudo apt-get install -y libgdal-dev

# liquibase
wget -O- https://repo.liquibase.com/liquibase.asc | gpg --dearmor > liquibase-keyring.gpg && \
cat liquibase-keyring.gpg | sudo tee /usr/share/keyrings/liquibase-keyring.gpg > /dev/null && \
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/liquibase-keyring.gpg] https://repo.liquibase.com stable main' | sudo tee /etc/apt/sources.list.d/liquibase.list
sudo apt-get update 
sudo apt-get install -y liquibase
# liquibase postgres drivers
sudo wget -P /opt/liquibase/lib https://jdbc.postgresql.org/download/postgresql-42.7.5.jar  

# hadolint (linter for Dockerfiles)
sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/latest/download/hadolint-Linux-x86_64
sudo chmod +x /bin/hadolint

# exiftool
sudo apt-get install -y exiftool

# FLAC and mp3 support
sudo apt-get install -y flac 
sudo apt-get install -y lame 

