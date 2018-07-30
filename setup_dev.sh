#!/bin/bash

apt -y remove --purge docker docker-engine docker.io
apt -y-get install \
    apt -y-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt -y-key add -
add-apt -y-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get -y update
#apt-get -y install docker-ce

apt -y install git-core gitk mercurial cvs subversion git-gui
apt -y install astyle uncrustify clang-format
apt -y install doxygen doxygen-gui graphviz
apt -y install libusb-dev arduino screen mspdebug gcc-msp430 msp430-libc openocd
apt -y install libreadline-dev libgnuplot-iostream-dev
apt -y install libglm-dev freeglut3-dev libglew1.5-dev libglu1-mesa-dev libgl1-mesa-dev
apt -y install libopenal-dev libogg-dev libvorbis-dev libavresample-dev libffms2-dev
apt -y install nvidia-cuda-toolkit
apt -y install libboost-all-dev

cd ./dev && dpkg -i *.deb && cd ../
apt -y install -fy
apt -y update && apt -y upgrade
apt -y install -fy
apt -y autoremove && apt -y clean

exit 0
