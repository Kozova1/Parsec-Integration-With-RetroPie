#!/bin/bash
answer3=0
echo "This script will integrate Parsec with RetroPie it will appear within RetroPie in the ports section"
echo "Made by Kozova1"
read -p "Type your server's ID on the server console tab" answer3
cd /home/pi/RetroPie/roms/ports
echo -n "parsec server_id=" > Parsec.sh
echo $answer3 > Parsec.sh
parsec
