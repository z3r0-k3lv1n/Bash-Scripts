#!/bin/bash

# The Kali Box Post Setup Preparation Script

# --------------------------------------------------------------------------------------------------------------------------
#     This script aims to setup useful tools for the security minded individual on a new Kali box install.
#     The aim is to update and prepare the installation with a box of goodies that will make it ready to go.
#             The script will perform the following functions:
#                     [+] Update Kali GPG Keys
#                     [+] Update and upgrade
#                     [+] Run a full dist-update if one is available
#                     [+] Install TOR for additional anonymity and privacy
#                     [+] Install Git for version control
#                     [+] Change directories to the Desktop
#                     [+] Make a new sub-directory called scripts inside the Desktop directory 
#                     [+] Make a new sub-directory called bash inside the scripts directory
#                     [+] Change directories into the bash sub-directory
#                     [+] Use git to clone a script that will install drivers for the AWUS036ACH WiFi Adapter
#                     [+] Change the permissions of this install script to add execute permissions to enable the script to run
#                     [+] Run the script to install the drivers
#                     [+] Return to the user root directory
#                     [+] Install Gdebi lightweight package manager
#                     [+] Install Tilix terminal multiplexer
#                     [+] Change the default SSH Keys to new keys
#                     [+]
# --------------------------------------------------------------------------------------------------------------------------

wget -q -O - https://www.kali.org/archive-key.asc | gpg --import
sudo update && sudo upgrade -y
sudo apt dist-upgrade -y
sudo apt install tor
sudo apt install git
sudo mkdir /Desktop/scripts
sudo mkdir /Desktop/scripts/bash
cd /Desktop/scripts/bash
sudo git clone https://github.com/z3r0-k3lv1n/Bash-Scripts/blob/4b35f2d7b601aea51d2057ee63db676fdc0bf46a/rtl88_driver_install.sh
sudo chmod +x rtl88_driver_install.sh
sudo ./rtl88_driver_install.sh
cd ~
sudo apt install gdebi
sudo apt install tilix
cd /etc/ssh
dpkg-reconfigure ssh-server
