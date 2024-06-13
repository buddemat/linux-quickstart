# shell tree command
sudo apt-get install tree -y
# Markdown preview
#sudo apt-get install grip -y
# better: pip version, moved to other file 

# Imagemagick
sudo apt-get install imagemagick -y

# node + elasticdump
sudo apt-get install -y nodejs npm
sudo npm install elasticdump -g

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

# kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl kubectl.sha256

# hadolint (linter for Dockerfiles)
sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/latest/download/hadolint-Linux-x86_64
sudo chmod +x /bin/hadolint
