#!/bin/bash

# from https://ansonvandoren.com/posts/pulseaudio-auto-bluetooth-hfp-profile/
# 1. find out card name and profile with `pactl list`
# 2. create script to switch headset to HFP
main_user=$(getent passwd 1000 | cut -d: -f1)
filename1="/home/$main_user/.config/jabra-pactl-auto-hfp.sh"

cat >$filename1 <<EOL
#!/bin/bash
sleep 2 # wait for the headset to fully connect
sudo -u '#1000' XDG_RUNTIME_DIR=/run/user/1000 \\
    pactl set-card-profile bluez_card.30_50_75_F5_C6_19 handsfree_head_unit
logger "Switched Jabra headset to HFP profile"
EOL
# 3. find out inpt name using `udevadm monitor` and then connecting BT headset
# 4. find out subsytem, vendor, product using `udevadm info -ap /devices/virtual/input/input112` (replacing input112 with whatever the previous command outputs)
# 5. create udev rule to execute above script (needs sudo?)
filename2=/etc/udev/rules.d/52-jabra-headset.rules
sudo echo "ACTION==\"add\", SUBSYSTEM==\"input\", ATTR{id/vendor}==\"0067\", ATTR{id/product}==\"097a\", RUN+=\"$filename1\"" | sudo tee -a $filename2 > /dev/null
