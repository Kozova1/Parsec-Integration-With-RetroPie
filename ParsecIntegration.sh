#!/bin/bash
variable answer3
echo "This script intete Parsec with RetroPie. Parsec will appear within the Ports section in RetroPie. You have to have RetroPie and ParsecInstalled!!!"
echo "Made by Kozova1"
echo "What is YOUR server id? it's located on the server console tab."
read answer3
cd /home/pi/RetroPie/roms/ports/
echo -n 'parsec server_id=' >Parsec.sh
echo $answer3 > Parsec.sh
parsec
