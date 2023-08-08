#!/bin/bash
# @Author: Z3r0 K3lv1n
# @Date:   2021-06-15 18:58:31
# @Last Modified by:   Z3r0 K3lv1n
# @Last Modified time: 2021-06-15 19:02:15


# The Macgyver Script

# 
# This script aims to make the following changes and checks to hardware settings and services 
# on a Linux box in order to operate with relative anonymity on the web. While also enabling the 
# use of pentesting features
#           1. Check and connect to internet
#			2. Run updates and upgrades.
#           3. Change the MAC Address of the device.
#           4. Start the TOR service to aid in anonymising traffic.
#           5. Switch the Wireless adapter into monitor mode.

# Greeting

NETWORK="[ENTER NETWORK NAME HERE]"
PASSWORD="[ENTER YOUR WIFI PASSWORD HERE]"
ADAPTER="[ENTER NETWORK ADAPTER NAME HERE]"
URL="[ENTER THE URL YOU WISH THE SCRIPT TO PING 3 TIMES TO CHECK IF YOU ARE CONNECTED]"


echo "Welcome to the MacGyver Script, we're working on getting your shit sorted with a penknife and a paper clip..."
echo ""

# Connecting to the internet and checking the connection\
# nmcli d wifi list
echo "Connecting to WiFi"
nmcli d wifi connect $NETWORK password $PASSWORD ifname $ADAPTER

# Start TOR service.
echo "ACTIVATING TOR SERVICE."
echo ""
service tor start
echo ""
echo ""
echo "We are checking to see if you are connected to the internet"
ping -c 3 $URL
echo ""

# Run Updates & Upgrades
echo "CHECKING FOR UPDATES AND UPGRADES AND MAKING CHANGES AS NECESSARY."
echo ""
apt-get update && apt-get upgrade -y
echo ""
echo "UPDATES CHECKED UPGRADES ADDED IF NECESSARY AND PROCESS COMPLETE!"
echo ""

# Change MAC Address to an address of the same type.\
echo "Changing the Mac Address and Switching Adapter to Monitor Mode"
echo ""
ifconfig $ADAPTER down
macchanger -a $ADAPTER
ifconfig $ADAPTER up
iwconfig $ADAPTER mode monitor
echo ""
echo "The WiFi Adapter is currently in: "
iwconfig | grep $ADAPTER

# Status Service\
echo ""
echo "WIRELESS ADAPTER IS CURRENTLY IN"
iwconfig $ADAPTER | grep Mode
echo ""
echo "THE CURRENT MAC ADDRESS IS."
macchanger -s $ADAPTER | grep "Current MAC"
echo ""
echo "The TOR Service is currently:"
service tor status | grep Active:
echo ""
echo "GET TA WORK YA BUM!"
echo ""
