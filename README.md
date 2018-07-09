# A Parsec Integration With RetroPie Script
## Please read ALL of the information here


## Description
This is a script for integrating Parsec with RetroPie.
Works ONLY on Raspberry Pi. 
If you have any problems contact me @ Discord Kozova1#1926

# Please Backup your system before running this script

## Installation

First find out your server id by clicking on the Manage button under the wanted server name in the Parsec app.


![image 1](https://raw.githubusercontent.com/Kozova1/Parsec-Integration-With-RetroPie/master/server_id1.PNG)


Then look at the top right corner in the prompt that pops up, and remember the number that's written there


![image 2](https://raw.githubusercontent.com/Kozova1/Parsec-Integration-With-RetroPie/master/server_id2.PNG)

## There are 2 methods to install this:
### 1st method:
### Run the following commands in the terminal:

  1. curl -s https://github.com/Kozova1/Parsec-Integration-With-RetroPie/curlsetup.sh | bash
  5. Follow the instructions on screen and when prompted enter your server id.
  6. After the script finishes it's work run the following command: parsec
  7. Login with your parsecgaming.com account and make sure to select "Remember Me".
  8. Now you can run Parsec via RetroPie! Have fun gaming!
  
### 2nd method:
### Run the following commands in the terminal:

  1. sudo apt-get install git
  2. git clone https://github.com/Kozova1/Parsec-Integration-With-RetroPie.git
  3. cd Parsec-Integration-With-RetroPie
  4. sudo bash setup.sh
  5. Follow the instructions on screen and when prompted enter your server id.
  6. After the script finishes it's work run the following command: parsec
  7. Login with your parsecgaming.com account and make sure to select "Remember Me".
  8. Now you can run Parsec via RetroPie! Have fun gaming!
  
# DISCLAIMER
  I am not responsible for any loss of data, hardware etc.
  You take full responsibility.
  
##  THIS SCRIPT CHANGES A DRIVER IN YOUR SYSTEM
  If you don't want the driver changed run this command instead of step 4:
  sudo bash setup.sh -nodrv
  

###  Contact me if you have any concerns / problems /Issues
 
  Discord: Kozova1 #1926

## Credits:
CBNathanael for helping me figure out some parts of the script

DSandler for fixing the multiple entry bug
