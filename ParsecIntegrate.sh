#!/bin/bash
answer3=0
echo "This script will integrate Parsec with RetroPie it will appear within RetroPie in the ports section"
echo "Made by Kozova1"
read -p "Type your servers ID on the server console tab" answer3
cd ~/RetroPie/roms/ports
echo -n "parsec server_id=" > ~/RetroPie/roms/ports/Parsec.sh
echo $answer3 > ~/RetroPie/roms/ports/Parsec.sh
parsec
