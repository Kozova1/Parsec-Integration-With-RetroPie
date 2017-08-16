#!/bin/bash
wget https://s3.amazonaws.com/parsec-build/package/parsec-rpi.deb
sudo dpkg -i parsec-rpi.deb
sudo chmod +x ParsecIntegrate.sh
./ParsecIntegrate.sh
