{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf400
{\fonttbl\f0\fnil\fcharset0 AmericanTypewriter-Semibold;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
{\info
{\author zero_kelvin}}\paperw11900\paperh16840\margl1440\margr1440\vieww20640\viewh12600\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b\fs36 \cf0 !/bin/bash\
\
# --------------------------------------------------------------------------------------------------\
#               This script performs the following functions.\
#                       1. Stops the TOR Service.\
#                       2. Shuts down the wlan0 interface, this is the Alfa AWUS036ACH.\
#                       3. Change the wlan0 interface into manage mode. The Alfa AWUS036ACH adapter.\
#                       4. Reset the MAC address to default address.\
#                       5. Restart the wlan0 Interface. This is the Alfa AWUS036ACH wireless adapter.\
# --------------------------------------------------------------------------------------------------\
\
echo ""\
echo "The Status of the TOR Service is currently."\
service tor stop\
service tor status | grep Active\
echo ""\
ifconfig wlan0 down\
iwconfig wlan0 mode manage\
echo ""\
echo "The MAC Address is currently set to:"\
macchanger -p wlan0 | grep "Current MAC"\
echo ""\
echo "The Wireless Adapter is Currently in the following mode."\
ifconfig wlan0 up\
iwconfig wlan0 | grep Mode\
echo ""\
echo "DEFAULT SETTINGS RESET."\
}