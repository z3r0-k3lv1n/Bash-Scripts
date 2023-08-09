#!/bin/bash

# The Tor Service Script

# --------------------------------------------------------------------------------
#       This script performs the following function.
#               1. Determine whether the Tor Service is active.
#               2. If the Tor Service is inactive it will switch the service on.
#               3. If the Tor Service is already on then it will do nothing.
# --------------------------------------------------------------------------------


str1="Active: active (exited)"
str2="Active: inactive (dead)"
tor.service

clear
sleep 1
service tor status | grep Active
sleep 1
if [[ $TorActive != "Active: active" ]]
        then
        service tor start | grep Active
        sleep 1
        service tor status
	  sleep 10
    elif [[ condition ]]; then
        #statements
	echo \'93Your Tor service is switched on mate!
fi
}
