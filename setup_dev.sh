#!/bin/bash

sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo sudo apt-get update

sudo apt-get install -y checkinstall
sudo apt-get install -y cmake cmake-gui
sudo apt-get install -y gcc-7 g++-7
gcc-7 -v
g++-7 -v

sudo add-apt-repository ppa:ubuntu-toolchain-r/test -ry
sudo apt-get update

wget -O - https://sudo apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo add-apt-repository -y 'deb http://apt.llvm.org/stretch/ llvm-toolchain-stretch-6.0 main'
sudo add-apt-repository -y 'deb https://download.virtualbox.org/virtualbox/debian xenial contrib'
sudo apt-get install -y virtualbox virtualbox-guest-additions-iso

sudo add-apt-repository ppa:damien-moore/codeblocks-stable -y

sudo apt-get update 

sudo apt-get remove --purge docker docker-engine docker.io -y
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update   
sudo apt-get -y install docker-ce


sudo apt-get install -y build-essential automake libtool \
	libfreetype6-dev libfreeimage-dev libzzip-dev \
	libxrandr-dev libxaw7-dev libgl1-mesa-dev libglu1-mesa-dev \
	libglew-dev nvidia-cg-toolkit libois-dev libsdl2-dev

sudo apt-get install -y git-core gitk mercurial cvs subversion git-gui
sudo apt-get install -y valgrind clang-6.0 llvm-6.0 clang-tools-6.0
sudo apt-get install -y codeblocks codeblocks-contrib
sudo apt-get install -y astyle uncrustify clang-format
sudo apt-get install -y doxygen doxygen-gui graphviz
sudo apt-get install -y libusb-dev arduino screen mspdebug gcc-msp430 msp430-libc openocd
sudo apt-get install -y libreadline-dev libgnuplot-iostream-dev
sudo apt-get install -y libglm-dev freeglut3-dev libglew1.5-dev libglu1-mesa-dev libgl1-mesa-dev
sudo apt-get install -y libopenal-dev libogg-dev libvorbis-dev libavresample-dev libffms2-dev
sudo apt-get install -y nvidia-cuda-toolkit
sudo apt-get install -y libboost-all-dev


exit 0
