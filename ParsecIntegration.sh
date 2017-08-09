#!/bin/bash
echo "This script will install and integrate Parsec with RetroPie. Parsec will appear within the Ports section in RetroPie. You have to have RetroPie Installed!!!"
echo "Made by Kozova1"
sudo apt-get update
sudo dpkg -i parsec-rpi.deb
echo "What is YOUR server id? it's located on the server console tab."
read answer3
cd ~/RetroPie/roms/ports/
echo -n 'parsec server_id=' >Parsec.sh
echo $answer3 > Parsec.sh
echo  "What is your Parsec Email adress?"
read answer
echo  "What is your Parsec password? This script won't store it"
read answer1
echo  "Do you want to save your Email & password? (y/n)"
read answer2
parsec
echo $answer
echo $answer1
echo $answer2
echo "Installation Successfull"