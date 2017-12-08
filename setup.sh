#!/bin/bash
wget https://s3.amazonaws.com/parsec-build/package/parsec-rpi.deb
sudo dpkg -i parsec-rpi.deb
sudo chmod +x Parsec.sh
sudo rm -rf /etc/emulationstation/themes/carbon/parsec
sudo rm -rf /opt/retropie/configs/all/emulationstation/themes/carbon/parsec
sudo mv --force /opt/retropie/configs/all/emulationstation/es_systems.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg.backup
sudo mv --force es_systems.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg
sudo mkdir -p ~pi/RetroPie/roms/ports
./Parsec.sh
