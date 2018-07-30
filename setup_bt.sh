#!/bin/bash

sudo rfkill list
sudo rfkill unblock bluetooth
sudo hciconfig hci0 up
sudo rfkill list
sudo rfkill unblock bluetooth
sudo hciconfig hci0 up

exit 0
