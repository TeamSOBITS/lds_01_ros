#!/bin/bash
echo -e "\e[34m\n Seting Robotis LDS-01 LIDAR Rules \e[m"
cd 
# Seting Robotis LDS-01 LIDAR( Ref : https://gist.github.com/jeremyfix/9ec54b0aed56451fc518f1440b2a82eb )
echo "SUBSYSTEM==\"tty\", ATTRS{idVendor}==\"05e3\", ATTRS{idProduct}==\"0610\", MODE:=\"0666\", GROUP:=\"dialout\", SYMLINK+=\"input/LDS01\", KERNEL==\"ttyUSB*\"" | sudo tee /etc/udev/rules.d/60-hlds-laser.rules

sudo udevadm control --reload-rules
sudo udevadm trigger

# USB Reload
sudo /etc/init.d/udev reload
