#!/bin/bash
wget https://s3.amazonaws.com/parsec-build/package/parsec-rpi.deb
sudo dpkg -i parsec-rpi.deb
sudo chmod +x Parsec.sh
sudo tr -d '\r' Parsec.sh ParsecFixed.sh
./ParsecFixed.sh
