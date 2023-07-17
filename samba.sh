sudo apt-get update
sudo apt-get install samba -y
sudo systemctl --enable now smbd
sudo ufw allow samba
sudo usermod -aG sambashare $USER
# to set password interactively
# sudo smbpasswd -a $USER
