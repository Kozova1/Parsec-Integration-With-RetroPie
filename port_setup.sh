#!/bin/bash

if [ ! -e ./parsec.cfg ]; then
    echo "error: run this script from the Parsec-Integration-With-RetroPie directory"
    exit 1
fi

echo "Made by Kozova1"

wget https://s3.amazonaws.com/parsec-build/package/parsec-rpi.deb
sudo dpkg -i parsec-rpi.deb

echo "What is the server id?: "
read -r S_ID

mkdir -p ~/RetroPie/roms/ports/
cd ~/RetroPie/roms/ports/ || (echo "mkdir -p $HOME/RetroPie/roms/ports failed"; exit)
echo '#!/bin/bash' > Parsec.sh
{
	printf "parsecd server_id=%s << EOF" "$S_ID"
	printf "y\n"
	printf "1\n"
	echo "EOF"
} >> Parsec.sh
chmod a+x Parsec.sh
echo "Port file written"

if [ "$1" != "-nodrv" ]
    then
    sudo apt install xboxdrv
    echo "Unneccessary driver removed, Installed better one."
fi
