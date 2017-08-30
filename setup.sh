#!/bin/bash
wget https://s3.amazonaws.com/parsec-build/package/parsec-rpi.deb
sudo dpkg -i parsec-rpi.deb
sudo chmod +x Parsec.sh
sudo cp es_systems.cfg /etc/emulationstation/es_system.cfg
sudo mkdir -p ~pi/RetroPie/roms/ports
./Parsec.sh
