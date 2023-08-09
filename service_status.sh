#!/bin/bash

# --------------------------------------------------------------------------------------------------
#       This script performs the following functions.\
#                       1. Switch Alfa WiFi Adapter to Monitor Mode.\
#                       2. Shows the iwconfig setting and sorts for the line showing the current mode.
# --------------------------------------------------------------------------------------------------


echo ""
echo "The Wireless adapter is currently in the following mode:"
iwconfig wlan0 | grep Mode
echo ""
echo "The TOR Service is Currently:"
service tor status
echo ""
echo "The MAC Address is Currently Set to:"
macchanger wlan0 -s | grep "Current MAC"
echo ""
echo "The Permanent MAC Address of this Wireless Device is:"
macchanger wlan0 -s | grep "Permanent MAC"}
