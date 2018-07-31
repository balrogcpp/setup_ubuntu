#!/bin/bash

add-apt-repository ppa:ubuntu-toolchain-r/test -y
apt-get update

apt-get install -y checkinstall
apt-get install gcc-7 g++-7 -y
gcc-7 -v
g++-7 -v

add-apt-repository ppa:ubuntu-toolchain-r/test -ry
apt-get update

wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -

add-apt-repository 'deb http://apt.llvm.org/stretch/ llvm-toolchain-stretch-6.0 main'
add-apt-repository 'deb https://download.virtualbox.org/virtualbox/debian xenial contrib'

add-apt-repository ppa:damien-moore/codeblocks-stable -y

apt update 

apt remove --purge docker docker-engine docker.io -y
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update   
#apt -y install docker-ce

#apt -y install libsdl2-dev
apt -y install git-core gitk mercurial cvs subversion git-gui
apt -y install valgrind clang-6.0 llvm-6.0 clang-tools-6.0
apt -y install codeblocks codeblocks-contrib
apt -y install astyle uncrustify clang-format
apt -y install doxygen doxygen-gui graphviz
apt -y install libusb-dev arduino screen mspdebug gcc-msp430 msp430-libc openocd
apt -y install libreadline-dev libgnuplot-iostream-dev
apt -y install libglm-dev freeglut3-dev libglew1.5-dev libglu1-mesa-dev libgl1-mesa-dev
apt -y install libopenal-dev libogg-dev libvorbis-dev libavresample-dev libffms2-dev
apt -y install nvidia-cuda-toolkit
apt -y install libboost-all-dev


exit 0
