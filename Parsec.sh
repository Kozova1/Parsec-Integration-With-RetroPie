echo "This script will integrate Parsec with RetroPie it will appear within RetroPie in the ports section"
 echo "Made by Kozova1"
 echo "Type your servers ID its on the server console tab"
read REPLY
cd ~pi/RetroPie/roms/ports/
sudo echo -n "parsec server_id=$REPLY">Parsec.sh
parsec
