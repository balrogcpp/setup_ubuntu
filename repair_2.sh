#!/bin/bash

# add some repos
sudo apt-add-repository ppa:kirillshkrogalev/ffmpeg-next
sudo apt-add-repository ppa:tortoisehg-ppa/releases
sudo add-apt-repository ppa:kxstudio-team/builds
sudo aptitude update

# sudo aptitude install preload
# sudo aptitude install laptop-mode-tools
# sudo aptitude install powerstat

sudo aptitude install ubuntu-restricted-extras

sudo aptitude install gdebi
sudo aptitude install git
sudo aptitude install mercurial
sudo aptitude install tortoisehg
sudo aptitude install pip
sudo aptitude install cmake
sudo aptitude install m4
sudo aptitude install checkinstall
sudo aptitude install mc
sudo aptitude install tcsh
sudo aptitude install apcalc
sudo aptitude install alien
sudo aptitude install lm-sensors
sudo aptitude install vim
sudo aptitude install htop
sudo aptitude install powertop
sudo aptitude install synaptic
sudo aptitude install dconf-editor
sudo aptitude install gnome-commander
sudo aptitude install ffmpeg
sudo aptitude install mesa-utils
sudo aptitude install mplayer
sudo aptitude install ttf-ancient-fonts
sudo aptitude install stardict
sudo aptitude install fbreader
sudo aptitude install djview
sudo aptitude install gimp
sudo aptitude install xsane
sudo aptitude install vlc
sudo aptitude install octave
sudo aptitude install qtiplot
sudo aptitude install unity-tweak-tool
sudo aptitude install ghex
sudo aptitude install anki
sudo aptitude install octave-signal octave-audio octave-image

sudo aptitude install celestia
sudo aptitude install celestia-common-nonfree
sudo aptitude install stellarium

sudo aptitude install magic
sudo aptitude install ngspice
sudo aptitude install verilog
sudo aptitude install gtkwave
sudo aptitude install eagle:i386
sudo aptitude install fritzing

sudo aptitude install cuneiform
sudo aptitude install yagf

sudo aptitude install freevic-client-gtk

# installation for msp430
sudo aptitude install gcc
sudo aptitude install g++
sudo aptitude install binutils-msp430
sudo aptitude install gcc-msp430
sudo aptitude install msp430-libc
sudo aptitude install mspdebug
sudo aptitude install gdb-msp430

# install packages needed for emacs work/customization
sudo aptitude install libclang-3.6-dev
