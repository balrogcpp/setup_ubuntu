#!/bin/bash

## Author AVS 31 Aug 2015


cd ~/source/setup_ubuntu/
sudo chmod + rx setup_ubuntu.sh

if [ $whoami = "root" ]
then
    echo "Now I'll open main script. Modify it on you own if need"
    sleep 1
    nano setup_ubuntu.sh
    ./setup_ubuntu.sh
else
    echo "Run this under root!"
    sleep 1
    exit 0
fi
