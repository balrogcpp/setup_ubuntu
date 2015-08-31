#!/bin/bash

## Warning !
## Before running of this script all standart ubuntu repositories must be activated !

## Please change this script to -y install what you need


dpkg --add-architecture i386 # allow dpkg to -y install 32-bit packages
apt-get -y install aptitude     # -y install aptitude package manager


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


##  apt-get -y install bumblebee bumblebee-nvidia virtualgl virtualgl-libs-ia32 primus primus-libs-ia32 nvidia-355 # -y install bumblebee + nvidia-driver

cat /proc/acpi/bbswitch
tee /proc/acpi/bbswitch <<< ON
apt-get -y install nvidia-355 nvidia-settings nvidia-prime ## perhapse i have to change 355 to another version

## TODO: Add script to switch intel\nvidia gpu

##  apt-get -y install default-jre
apt-add-repository ppa:webupd8team/java &&  apt-get update # add repository for oracle java 8
apt-get -y install oracle-java8-installer ## -y install oracle-java-8
##  apt-get -y install openjdk-7-jdk ## -y install open-jdk
apt-get -y install open-jdk-jre
apt-get -y install bcmwl-kernel-source    ## -y install driver for wirell module

##  apt-get -y install preload
##  apt-get -y install laptop-mode-tools
##  apt-get -y install powerstat

## group codec packages
##  apt-get -y install ffmpeg
apt-get -y install ubuntu-restricted-extras
apt-get -y install vlc

## group  basic packages
apt-get -y install gdebi
apt-get -y install git
apt-get -y install emacs
apt-get -y install git-all
apt-get -y install mercurial
apt-get -y install python-pip
apt-get -y install curl
apt-get -y install cmake
apt-get -y install m4
apt-get -y install checkinstall
apt-get -y install mc
apt-get -y install tcsh
apt-get -y install apcalc
apt-get -y install alien
apt-get -y install lm-sensors
apt-get -y install vim
apt-get -y install htop
apt-get -y install powertop
apt-get -y install synaptic
apt-get -y install dconf-editor
apt-get -y install mesa-utils
apt-get -y install mesa-utils-extras
apt-get -y install mplayer

## group font packages
apt-get -y install ttf-ancient-fonts
apt-get -y install fonts-inconsolata
apt-get -y install fonts-droid
apt-get -y install fonts-dejavu
apt-get -y install fonts-liberation
apt-get -y install xfonts-terminus console-terminus

## group office software packages
apt-get -y install stardict
apt-get -y install fbreader
apt-get -y install djview
apt-get -y install gimp
apt-get -y install xsane
apt-get -y install octave
apt-get -y install qtiplot
apt-get -y install cuneiform
apt-get -y install yagf
apt-get -y install anki
apt-get -y remove  thunderbird
apt-get -y install evolution
##  apt-get -y install libreoffice maybe it's easier to to this from *.deb files

## group tweak applications

## group science packages
apt-get -y install octave-signal octave-audio octave-image
apt-get -y install celestia
apt-get -y install celestia-common-nonfree
apt-get -y install stellarium
apt-get -y install magic
apt-get -y install ngspice
apt-get -y install verilog
apt-get -y install gtkwave
apt-get -y install eagle:i386
apt-get -y install fritzing

## group game packages
apt-get -y install freevic-client-gtk

## group embedded software  packages
## * msp430
apt-get -y install binutils-msp430
apt-get -y install gcc-msp430
apt-get -y install msp430-libc
apt-get -y install mspdebug
apt-get -y install gdb-msp430
## *arduino
apt-get -y install arduino arduino-core

# -y install packages needed for emacs work/customization
apt-get -y install libclang-3.6-dev

## group indicator packages
apt-get -y install indicator-multiload ## load indicator
apt-get -y install my-weather-indicator ## weather indicator

## group 3rd party software
apt-get -y install spotify-client
apt-get -y install dropbox
##  apt-get -y install playonlinux
apt-get -y install sublime-text-installer
apt-get -y install google-chrome-stable
apt-get -y install skype
##  apt-get -y install sni-qt:i386 # needed to -y install for skype-indicator to work well
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
