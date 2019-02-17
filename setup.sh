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
  if ! grep -q '<name>Parsec</name>' ~/.emulationstation/es_systems.cfg; then
    sed -i '$e cat parsec.cfg' ~/.emulationstation/es_systems.cfg
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
if [ -d ~/.emulationstation/themes/carbon ]; then
  cp -Rf ./carbon/. ~/.emulationstation/themes/carbon
  echo "Carbon theme altered to fit Parsec in /etc"
fi
if [ -d /etc/emulationstation/themes/pixel ]; then
  sudo cp -Rf ./carbon/. /etc/emulationstation/themes/pixel/
  echo "Pixel theme altered to fit Parsec in ~pi"
fi
if [ -d ~/.emulationstation/themes/pixel ]; then
  cp -Rf ./carbon/. ~/.emulationstation/themes/pixel
  echo "Pixel theme altered to fit Parsec in /etc"
fi

mkdir -p ~/RetroPie/roms/parsec
cd ~/RetroPie/roms/parsec/
echo 'sudo parsec << EOF' >> Parsec.sh
echo 'y\n' >> Parsec.sh
echo '1\n' >> Parsec.sh
echo 'EOF' >> Parsec.sh
chmod a+x Parsec.sh
echo "ROM File written"

if [ "$1" != "-nodrv" ]
    then
    sudo apt install xboxdrv
    echo "Unneccessary driver removed, Installed better one."
fi
