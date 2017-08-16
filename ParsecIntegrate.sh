echo "This script will integrate Parsec with RetroPie it will appear within RetroPie in the ports section"
echo "Made by Kozova1"
read -p "Type your servers ID its on the server console tab"
cd ~/RetroPie/roms/ports
sudo echo -n "parsec server_id=" > Parsec.sh
sudo echo $REPLY > Parsec.sh
parsec
