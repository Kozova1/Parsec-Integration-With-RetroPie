#!/bin/bash
variable answer3
variable answer2
variable answer1
variable answer
echo "This script integrate Parsec with RetroPie. Parsec will appear within the Ports section in RetroPie. You have to have RetroPie and ParsecInstalled!!!"
echo "Made by Kozova1"
echo "What is YOUR server id? it's located on the server console tab."
read answer3
cd /home/pi/RetroPie/roms/ports/
echo -n 'parsec server_id=' >Parsec.sh
echo $answer3 > Parsec.sh
echo  "What is your Parsec Email adress?"
read answer
echo  "What is your Parsec password? This script won't store it"
read answer1
echo  "Do you want to save your Email & password? (y/n)"
read answer2
parsec
echo $answer
echo $answer1
echo $answer2
