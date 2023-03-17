# disable wifi power management
# verify with `iwconfig`, should show "Power Management:off"
sudo sed -i 's/3/2/' /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf


