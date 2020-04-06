#!/bin/bash

if [ ! -e ./parsec.cfg ]; then
    echo "error: run this script from the Parsec-Integration-With-RetroPie directory"
    exit 1
fi

echo "Made by Kozova1"

wget https://s3.amazonaws.com/parsec-build/package/parsec-rpi.deb
sudo dpkg -i parsec-rpi.deb

echo "What is the server id?: "
read S_ID

mkdir -p ~/RetroPie/roms/ports/
cd ~/RetroPie/roms/ports/
echo '#!/bin/bash' > Parsec.sh
echo "parsec server_id=$S_ID << EOF" >> Parsec.sh
echo 'y\n' >> Parsec.sh
echo '1\n' >> Parsec.sh
echo 'EOF' >> Parsec.sh
chmod a+x Parsec.sh
echo "Port file written"

if [ "$1" != "-nodrv" ]
    then
    sudo apt install xboxdrv
    echo "Unneccessary driver removed, Installed better one."
fi
