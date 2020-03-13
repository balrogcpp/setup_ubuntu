#!/bin/bash

sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo add-apt-repository --yes ppa:js-reynaud/kicad-5 #kicad
sudo sudo apt-get update

sudo apt-get install -y checkinstall
sudo apt-get install -y cmake cmake-gui
sudo apt-get install -y gcc-8 g++-8 gcc-8-multilib g++-8-multilib
sudo apt-get install -y gcc-9 g++-9 gcc-9-multilib g++-9-multilib
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 900 --slave /usr/bin/g++ g++ /usr/bin/g++-9


sudo add-apt-repository ppa:ubuntu-toolchain-r/test -ry
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

#wget -O - https://sudo apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
#wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
#wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

#sudo add-apt-repository -y 'deb http://apt.llvm.org/stretch/ llvm-toolchain-stretch-6.0 main'
#sudo add-apt-repository -y 'deb https://download.virtualbox.org/virtualbox/debian xenial contrib'
#sudo apt-get install -y virtualbox virtualbox-guest-additions-iso

#sudo add-apt-repository ppa:damien-moore/codeblocks-stable -y

#sudo apt-get update 

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
sudo usermod -a -G docker $USER
sudo apt-get -y install kicad kicad-demo

sudo apt-get install -y build-essential automake libtool \
	libfreetype6-dev libfreeimage-dev libzzip-dev \
	libxrandr-dev libxaw7-dev libgl1-mesa-dev libglu1-mesa-dev \
	libglew-dev libois-dev libsdl2-dev

#nvidia-cg-toolkit
sudo apt-get install -y git-core gitk mercurial cvs subversion git-gui
sudo apt-get install -y valgrind valkyrie
#sudo apt-get install -y clang-6.0 llvm-6.0 clang-tools-6.0
#sudo apt-get install -y codeblocks codeblocks-contrib
#sudo apt-get install -y astyle uncrustify clang-format
sudo apt-get install -y doxygen doxygen-gui graphviz
#sudo apt-get install -y libusb-dev arduino screen
#sudo apt-get install -y mspdebug gcc-msp430 msp430-libc openocd
sudo apt-get install -y libreadline-dev libgnuplot-iostream-dev
sudo apt-get install -y libglm-dev freeglut3-dev libglew1.5-dev libglu1-mesa-dev libgl1-mesa-dev
sudo apt-get install -y libglfw3-dev libvulkan-dev
sudo apt-get install -y libopenal-dev libogg-dev libvorbis-dev libavresample-dev libffms2-dev
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y qtbase5-dev qtdeclarative5-dev 
sudo apt-get install -y libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev libsdl2-gfx-dev libsdl2-net-dev
sudo apt-get install -y libgd2-dev libalut-dev
sudo apt-get install -y lua5.2
sudo apt-get install -y libpng12-dev

#Context2-engine dependencies
sudo apt-get install -y build-essential automake libtool \
	libfreetype6-dev libfreeimage-dev libzzip-dev \
	libxrandr-dev libxaw7-dev libgl1-mesa-dev libglu1-mesa-dev \
	libglew-dev nvidia-cg-toolkit libois-dev libsdl2-dev \
	libopenal-dev libogg-dev libvorbis-dev libavresample-dev libffms2-dev

#Unity3D dependencies
sudo apt install libgtk2.0-0 libsoup2.4-1 libarchive13 libpng16-16 libgconf-2-4 lib32stdc++6 libcanberra-gtk-module

#MakeHuman
sudo add-apt-repository -y ppa:makehuman-official/makehuman-community
sudo apt-get -y install makehuman-community

exit 0
