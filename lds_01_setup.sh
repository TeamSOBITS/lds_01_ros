#!/bin/bash
echo -e "\e[34m\n Update \e[m"
sudo apt update

echo -e "\e[34m\n Install ros-melodic-hls-lfcd-lds-driver \e[m"
sudo apt-get install ros-melodic-hls-lfcd-lds-driver -y
