#!/bin/sh

PARSEC_CFG="
<system>
    <name>Parsec</name>
    <fullname>ParsecGaming.com Streaming Service</fullname>
    <path>/home/pi/RetroPie/roms/parsec</path>
    <extension>.sh .SH .sH .Sh</extension>
    <command>bash %ROM%</command>
    <platform>Parsec</platform>
    <theme>parsec</theme>
</system>"

wget https://s3.amazonaws.com/parsec-build/package/parsec-rpi.deb
sudo dpkg -i parsec-rpi.deb
sudo rm -rf /etc/emulationstation/themes/carbon/parsec
rm -rf ~pi/.emulationstation/themes/carbon/parsec

if [ -e ~pi/.emulationstation/es_systems.cfg ]; then
  # don't want to add it twice
  if ! grep -q '<name>Parsec</name>' ~/.emulationstation/es_systems.cfg; then
    sed -i '\$e printf "$PARSEC_CFG"' ~/.emulationstation/es_systems.cfg
    echo "Parsec entry added to EmulationStation in ~pi"
  fi
fi

if [ -e /etc/emulationstation/es_systems.cfg ]; then
  # same as above: don't want to add it twice
  if ! grep -q '<name>Parsec</name>' /etc/emulationstation/es_systems.cfg; then
    sudo sed -i '\$e printf "$PARSEC_CFG"' /etc/emulationstation/es_systems.cfg
    echo "Parsec entry added to EmulationStation in /etc"
  fi
fi

if [ -d /etc/emulationstation/themes/carbon ]; then
  sudo cp -Rf ./carbon/. /etc/emulationstation/themes/carbon/
  echo "Carbon theme altered to fit Parsec in ~pi"
fi
if [ -d ~/.emulationstation/themes/carbon ]; then
  cp -Rf ./carbon/. ~/.emulationstation/themes/carbon
  echo "Carbon theme altered to fit Parsec in /etc"
fi
if [ -d /etc/emulationstation/themes/pixel ]; then
  sudo cp -Rf ./carbon/. /etc/emulationstation/themes/pixel/
  echo "Pixel theme altered to fit Parsec in ~pi"
fi
if [ -d ~/.emulationstation/themes/pixel ]; then
  cp -Rf ./carbon/. ~/.emulationstation/themes/pixel
  echo "Pixel theme altered to fit Parsec in /etc"
fi

echo "What is the Peer ID?: "
read -r S_ID

mkdir -p ~/RetroPie/roms/parsec
cd ~/RetroPie/roms/parsec/ || (echo "mkdir -p $HOME/RetroPie/roms/parsec failed"; exit)
{
	printf "parsecd server_id=%s << EOF" "$S_ID"
	printf "y\n"
	printf "1\n"
	echo "EOF"
} >> Parsec.sh
chmod a+x Parsec.sh
echo "ROM File written"
