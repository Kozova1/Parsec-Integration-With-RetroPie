# A Parsec Integration With RetroPie Script
<img src="./.github/RetroPie-Parsec.logo.svg" alt="The Logo" width="1600" height="400">

## Please read ALL of the information here


This is a script for integrating Parsec with RetroPie.
At the moment the script only supports the Carbon and Pixel Themes.
# Please Backup your system before running this script

## Installation

### First find out your Peer id by clicking on the Computers Tab in the Parsec app.
![image 1](./.github/parsec_1.png)


### Right clicking on the Computer you want to connect to. Left clicking on the Peer ID will copy it. Write down the number if you like. It IS case sensitive.

![image 2](./.github/parsec_2.png)

### Run the following commands in the terminal:
```bash
$ curl -fsSL https://raw.githubusercontent.com/Kozova1/Parsec-Integration-With-RetroPie/master/curlsetup.sh | sh
```
Follow the instructions on screen.
After the script finishes it's work it's recommended to restart 'EmulationStation' or your Raspberry Pi.
You should see a 'Parsec'  console option in EmulationStation
Login with your [parsec](https://parsecgaming.com) account.
Click Connect on your desired PC.
Now you can run Parsec via RetroPie! Have fun gaming!

# DISCLAIMER
1. I am not responsible for any loss of data, hardware etc. You take full responsibility.
2. Setup.sh alters your installation such that **future updates of RetroPie will not effect es_systems.cfg**.
> Note: in the future, you will have to manually update /home/pi/.emulationstation/es_systems.cfg, as it will not be overwritten by RetroPie updates.

### File an issue if you have any problems
## Credits:
CBNathanael for helping me figure out some parts of the script  
Pixel theme for EmulationStation  
Carbon theme for EmulationStation  
RetroPie Project  
DSandler for fixing the multiple entry bug  
SH icon in logo Designed by Freepik from www.flaticon.com  
Kosova1 for writing most of the script  
advanttage for providing updated images for the README, thank you!  
Left Arrow icon designed by Roundicons from www.flaticon.com  
Right Click Of The Mouse icon designed by Freepik from www.flaticon.com  
