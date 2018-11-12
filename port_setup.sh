#!/bin/bash

if [ ! -e ./parsec.cfg ]; then
    echo "error: run this script from the Parsec-Integration-With-RetroPie directory"
    exit 1
fi

echo "Made by Kozova1"

wget https://s3.amazonaws.com/parsec-build/package/parsec-rpi.deb
sudo dpkg -i parsec-rpi.deb

echo "Type your server ID now"
read REPLY
mkdir -p ~/RetroPie/roms/parsec
cd ~/RetroPie/roms/parsec/
echo -n "parsec server_id=$REPLY">Parsec.sh
echo "ROM File written"

if [ "$1" != "-nodrv" ]
    then
    sudo apt install xboxdrv
    echo "Unneccessary driver removed, Installed better one."
fi
