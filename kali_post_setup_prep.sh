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
sudo apt install gdebi
sudo apt install tilix
cd /etc/ssh
dpkg-reconfigure ssh-server
