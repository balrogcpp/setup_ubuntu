#!/bin/bash

sudo dpkg --add-architecture i386 # allow dpkg to install 32-bit packages
sudo apt-get install aptitude     # install aptitude package manager


sudo add-apt-repository ppa:bumblebee/stable # add repository for nvidia-bunblebee
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo aptitude update
# sudo aptitude install bumblebee bumblebee-nvidia virtualgl virtualgl-libs-ia32 primus primus-libs-ia32 nvidia-331-updates # install bumblebee + nvidia driver
sudo aptitude install bumblebee bumblebee-nvidia virtualgl virtualgl-libs-ia32 primus primus-libs-ia32 nvidia-446-updates # install bumblebee + nvidia-driver


# sudo aptitude install default-jre
sudo aptitude install openjdk-7-jdk
sudo apt-add-repository ppa:webupd8team/java && sudo aptitude update # add repository for oracle java vm 8
sudo aptitude install oracle-java8-installer # install oracle-java-8
sudo aptitude install bcmwl-kernel-source    # install driver for wirell module
