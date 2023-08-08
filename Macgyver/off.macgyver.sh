!/bin/bash\
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
