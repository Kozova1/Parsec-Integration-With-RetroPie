#!/bin/bash
wget https://s3.amazonaws.com/parsec-build/package/parsec-rpi.deb
sudo dpkg -i parsec-rpi.deb
sudo chmod +x Parsec.sh
sudo mv --force /etc/emulationstation/es_systems.cfg /etc/emulationstation/es_systems.cfg.backup
sudo mv --force es_systems.cfg /etc/emulationstation/es_systems.cfg
sudo mkdir -p ~pi/RetroPie/roms/ports
./Parsec.sh
