#!/bin/bash

## Warning !
## Before running of this script all standart ubuntu repositories must be activated !

## Please change this script to install -y what you need


dpkg --add-architecture i386 # allow dpkg to install -y 32-bit packages
apt-get install -y aptitude     # install -y aptitude package manager


##  add-apt-repository -y ppa:bumblebee/stable ## 
add-apt-repository -y ppa:graphics-drivers/ppa ##  nvidia-driver
##  apt-add-repository ppa:kirillshkrogalev/ffmpeg-next ## 
add-apt-repository -y ppa:kxstudio-team/builds ## ??
##  add-apt-repository -y ppa:js-reynaud/ppa-kicad ## ppa for kicad
##  add-apt-repository -y ppa:ubuntu-wine/ppa ## ppa for wine
add-apt-repository -y ppa:webupd8team/sublime-text-3 ## sublime text
add-apt-repository -y ppa:indicator-multiload/stable-daily ## load indicator
add-apt-repository -y ppa:atareao/atareao ## weather indicator
add-apt-repository -y ppa:libreoffice/libreoffice-5-0 ## ppa for libreoffice 5.0

## ppa for  spotify
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
echo deb http://repository.spotify.com stable non-free |  tee /etc/apt/sources.list.d/spotify.list

## ppa for dropbox
apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ vivid main" >> /etc/apt/sources.list.d/dropbox.list'

## ppa for playonlinux
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E0F72778C4676186
wget http://deb.playonlinux.com/playonlinux_trusty.list -O /etc/apt/sources.list.d/playonlinux.list

## ppa for google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub |  apt-key add -
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

apt-get -y update &&  apt-get -y dist-upgrade 


##  apt-get install -y bumblebee bumblebee-nvidia virtualgl virtualgl-libs-ia32 primus primus-libs-ia32 nvidia-355 # install -y bumblebee + nvidia-driver

cat /proc/acpi/bbswitch
tee /proc/acpi/bbswitch <<< ON
apt-get install -y nvidia-355 nvidia-settings nvidia-prime ## perhapse i have to change 355 to another version

## TODO: Add script to switch intel\nvidia gpu

##  apt-get install -y default-jre
apt-add-repository ppa:webupd8team/java &&  apt-get update # add repository for oracle java 8
apt-get install -y oracle-java8-installer ## install -y oracle-java-8
##  apt-get install -y openjdk-7-jdk ## install -y open-jdk
apt-get install -y open-jdk-jre
apt-get install -y bcmwl-kernel-source    ## install -y driver for wirell module

##  apt-get install -y preload
##  apt-get install -y laptop-mode-tools
##  apt-get install -y powerstat

## group codec packages
##  apt-get install -y ffmpeg
apt-get install -y ubuntu-restricted-extras
apt-get install -y vlc

## group  basic packages
apt-get install -y gdebi
apt-get install -y git
apt-get install -y emacs
apt-get install -y git-all
apt-get install -y mercurial
apt-get install -y python-pip
apt-get install -y curl
apt-get install -y cmake
apt-get install -y m4
apt-get install -y checkinstall
apt-get install -y mc
apt-get install -y tcsh
apt-get install -y apcalc
apt-get install -y alien
apt-get install -y lm-sensors
apt-get install -y vim
apt-get install -y htop
apt-get install -y powertop
apt-get install -y synaptic
apt-get install -y dconf-editor
apt-get install -y mesa-utils
apt-get install -y mesa-utils-extras
apt-get install -y mplayer

## group font packages
apt-get install -y ttf-ancient-fonts
apt-get install -y fonts-inconsolata
apt-get install -y fonts-droid
apt-get install -y fonts-dejavu
apt-get install -y fonts-liberation
apt-get install -y xfonts-terminus console-terminus

## group office software packages
apt-get install -y stardict
apt-get install -y fbreader
apt-get install -y djview
apt-get install -y gimp
apt-get install -y xsane
apt-get install -y octave
apt-get install -y qtiplot
apt-get install -y cuneiform
apt-get install -y yagf
apt-get insyall anki
##  apt-get install -y libreoffice maybe it's easier to to this from *.deb files

## group tweak applications

## group science packages
apt-get install -y octave-signal octave-audio octave-image
apt-get install -y celestia
apt-get install -y celestia-common-nonfree
apt-get install -y stellarium
apt-get install -y magic
apt-get install -y ngspice
apt-get install -y verilog
apt-get install -y gtkwave
apt-get install -y eagle:i386
apt-get install -y fritzing

## group game packages
apt-get install -y freevic-client-gtk

## group embedded software  packages
## * msp430
apt-get install -y binutils-msp430
apt-get install -y gcc-msp430
apt-get install -y msp430-libc
apt-get install -y mspdebug
apt-get install -y gdb-msp430
## *arduino
apt-get install -y arduino arduino-core

# install -y packages needed for emacs work/customization
apt-get install -y libclang-3.6-dev

## group indicator packages
apt-get install -y indicator-multiload ## load indicator
apt-get install -y my-weather-indicator ## weather indicator

## group 3rd party software
apt-get install -y spotify-client
apt-get install -y dropbox
##  apt-get install -y playonlinux
apt-get install -y sublime-text-installer
apt-get install -y google-chrome-stable
apt-get install -y skype
##  apt-get install -y sni-qt:i386 # needed to install -y for skype-indicator to work well
## TODO: seems like it's no nore needed

## group installed from *.deb
gdebi microsoft_online_apps.deb
gdebi steam_latest.deb
gdebi yandex-disk_latest_amd64.deb
gdebi ttf-sazanami-mincho_20040629-15_all.deb
gdebi yarxi_1.10-1_amd64.deb

## custoimze
## 
ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/libGL.so.1
sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop
## gsettings set org.gnome.gedit.preferences.encodings auto-detected "['UTF-8', 'WINDOWS-1251', 'CURRENT', 'ISO-8859-15', 'UTF-16']"

echo "Wil now reboot..."
sleep 1
reboot
