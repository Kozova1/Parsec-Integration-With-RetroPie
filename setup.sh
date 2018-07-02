#!/bin/bash

if [ ! -e ./parsec.cfg ]; then
    echo "error: run this script from the Parsec-Integration-With-RetroPie directory"
    exit 1
fi

echo "Made by Kozova1"

wget https://s3.amazonaws.com/parsec-build/package/parsec-rpi.deb
sudo dpkg -i parsec-rpi.deb
sudo rm -rf /etc/emulationstation/themes/carbon/parsec
rm -rf ~pi/.emulationstation/themes/carbon/parsec

if [ -e ~pi/.emulationstation/es_systems.cfg ]; then
  # don't want to add it twice
  if ! grep -q '<name>Parsec</name>' ~pi/.emulationstation/es_systems.cfg; then
    sed -i '$e cat parsec.cfg' ~pi/.emulationstation/es_systems.cfg
    echo "Parsec entry added to EmulationStation in ~pi"
  fi
fi

if [ -e /etc/emulationstation/es_systems.cfg ]; then
  # same as above: don't want to add it twice
  if ! grep -q '<name>Parsec</name>' /etc/emulationstation/es_systems.cfg; then
    sudo sed -i '$e cat parsec.cfg' /etc/emulationstation/es_systems.cfg
    echo "Parsec entry added to EmulationStation in /etc"
  fi
fi

if [ -d /etc/emulationstation/themes/carbon ]; then
  sudo cp -Rf ./carbon/. /etc/emulationstation/themes/carbon/
  echo "Carbon theme altered to fit Parsec in ~pi"
fi
if [ -d ~pi/.emulationstation/themes/carbon ]; then
  cp -Rf ./carbon/. ~pi/.emulationstation/themes/carbon
  echo "Carbon theme altered to fit Parsec in /etc"
fi

echo "Type your servers ID its on the server console tab"
read REPLY
mkdir -p ~pi/RetroPie/roms/parsec
cd ~pi/RetroPie/roms/parsec/
echo -n "parsec server_id=$REPLY">Parsec.sh
echo "ROM File written"

if [ "$1" != "-nodrv" ]
    then
    sudo apt-get install xboxdrv
    echo "Unneccessary driver removed, Installed better one."
fi

echo " Starting parsec for the 1st time, please login and select Remember My Password"

parsec
