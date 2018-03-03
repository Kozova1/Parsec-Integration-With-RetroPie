#!/bin/bash
echo "Made by Kozova1"

      wget https://s3.amazonaws.com/parsec-build/package/parsec-rpi.deb
      sudo dpkg -i parsec-rpi.deb
      sudo chmod +x Parsec.sh


      sudo rm -rf /etc/emulationstation/themes/carbon/parsec
      sudo rm -rf ~pi/.emulationstation/themes/carbon/parsec
sudo cp --force ~pi/.emulationstation/es_systems.cfg ~pi/.emulationstation/es_systems.cfg.backup
sed -i '$e cat parsec.cfg' /opt/retropie/configs/all/emulationstation/es_systems.cfg
echo "Parsec entry added to EmulationStation"
sudo mkdir -p ~pi/RetroPie/roms/ports
echo "Type your servers ID its on the server console tab"
read REPLY
sudo cp -Rf ~pi/Parsec-Integration-With-RetroPie/carbon/ /etc/emulationstation/carbon/
sudo cp -Rf ~pi/Parsec-Integration-With-RetroPie/carbon/ /opt/retropie/configs/all/emulationstation/themes/carbon
echo "Carbon theme altered to fit Parsec"
mkdir -p ~pi/RetroPie/roms/parsec
cd ~pi/RetroPie/roms/parsec/
sudo echo -n "parsec server_id=$REPLY">Parsec.sh
echo "ROM File written"

    if[ $1 != nodrv]
    then
    sudo apt-get install xboxdrv
    fi

echo "Unneccessary driver removed, Installed better one. Starting parsec for the 1st time..."
parsec
