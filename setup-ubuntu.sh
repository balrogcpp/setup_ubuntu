#!/bin/bash

## Warning !
## Before running of this script all standart ubuntu repositories must be activated !

## Please change this script to install -y what you need


dpkg --add-architecture i386 # allow dpkg to install -y 32-bit packages
apt-get install -y aptitude     # install -y aptitude package manager


##  add-apt-repository -y ppa:bumblebee/stable ## 
add-apt-repository -y ppa:graphics-drivers/ppa ##  nvidia-driver
##  apt-add-repository ppa:kirillshkrogalev/ffmpeg-next ## 
 add-apt-repository -y ppa:kxstudio-team/builds ## ???
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

aptitude -y update &&  aptitude -y dist-upgrade 


##  aptitude install -y bumblebee bumblebee-nvidia virtualgl virtualgl-libs-ia32 primus primus-libs-ia32 nvidia-355 # install -y bumblebee + nvidia-driver

cat /proc/acpi/bbswitch
tee /proc/acpi/bbswitch <<< ON
aptitude install -y nvidia-355 nvidia-settings nvidia-prime ## perhapse i have to change 355 to another version

## TODO: Add script to switch intel\nvidia gpu

##  aptitude install -y default-jre
apt-add-repository ppa:webupd8team/java &&  aptitude update # add repository for oracle java 8
aptitude install -y oracle-java8-installer ## install -y oracle-java-8
##  aptitude install -y openjdk-7-jdk ## install -y open-jdk
aptitude install -y open-jdk-jre
aptitude install -y bcmwl-kernel-source    ## install -y driver for wirell module

##  aptitude install -y preload
##  aptitude install -y laptop-mode-tools
##  aptitude install -y powerstat

## group codec packages
##  aptitude install -y ffmpeg
aptitude install -y ubuntu-restricted-extras
aptitude install -y vlc

## group  basic packages
aptitude install -y gdebi
aptitude install -y git
aptitude install -y emacs
aptitude install -y git-all
aptitude install -y mercurial
aptitude install -y python-pip
aptitude install -y curl
aptitude install -y cmake
aptitude install -y m4
aptitude install -y checkinstall
aptitude install -y mc
aptitude install -y tcsh
aptitude install -y apcalc
aptitude install -y alien
aptitude install -y lm-sensors
aptitude install -y vim
aptitude install -y htop
aptitude install -y powertop
aptitude install -y synaptic
aptitude install -y dconf-editor
aptitude install -y mesa-utils
aptitude install -y mesa-utils-extras
aptitude install -y mplayer

## group font packages
aptitude install -y ttf-ancient-fonts
aptitude install -y fonts-inconsolata
aptitude install -y fonts-droid
aptitude install -y fonts-dejavu
aptitude install -y fonts-liberation
aptitude install -y xfonts-terminus console-terminus

## group office software packages
aptitude install -y stardict
aptitude install -y fbreader
aptitude install -y djview
aptitude install -y gimp
aptitude install -y xsane
aptitude install -y octave
aptitude install -y qtiplot
aptitude install -y cuneiform
aptitude install -y yagf
aptitude insyall anki
##  aptitude install -y libreoffice maybe it's easier to to this from *.deb files

## group tweak applications

## group science packages
aptitude install -y octave-signal octave-audio octave-image
aptitude install -y celestia
aptitude install -y celestia-common-nonfree
aptitude install -y stellarium
aptitude install -y magic
aptitude install -y ngspice
aptitude install -y verilog
aptitude install -y gtkwave
aptitude install -y eagle:i386
aptitude install -y fritzing

## group game packages
aptitude install -y freevic-client-gtk

## group embedded software  packages
## * msp430
aptitude install -y binutils-msp430
aptitude install -y gcc-msp430
aptitude install -y msp430-libc
aptitude install -y mspdebug
aptitude install -y gdb-msp430
## *arduino
aptitude install -y arduino arduino-core

# install -y packages needed for emacs work/customization
aptitude install -y libclang-3.6-dev

## group indicator packages
aptitude install -y indicator-multiload ## load indicator
aptitude install -y my-weather-indicator ## weather indicator

## group 3rd party software
aptitude install -y spotify-client
aptitude install -y dropbox
##  aptitude install -y playonlinux
aptitude install -y sublime-text-installer
aptitude install -y google-chrome-stable
aptitude install -y skype
##  aptitude install -y sni-qt:i386 # needed to install -y for skype-indicator to work well
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
