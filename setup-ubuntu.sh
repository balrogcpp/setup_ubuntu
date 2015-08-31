#!/bin/bash

## Warning !
## Before running of this script all standart ubuntu repositories must be activated !

## Please change this script to install what you need


 dpkg --add-architecture i386 # allow dpkg to install 32-bit packages
 apt-get install aptitude     # install aptitude package manager


##  add-apt-repository ppa:bumblebee/stable ## 
 add-apt-repository ppa:graphics-drivers/ppa ##  nvidia-driver
 apt-add-repository ppa:kirillshkrogalev/ffmpeg-next ## 
##  apt-add-repository ppa:tortoisehg-ppa/releases ## 
 add-apt-repository ppa:kxstudio-team/builds ## ???
 add-apt-repository ppa:js-reynaud/ppa-kicad ## ppa for kicad
 add-apt-repository ppa:ubuntu-wine/ppa ## ppa for wine
 add-apt-repository ppa:webupd8team/sublime-text-3 ## sublime text
 add-apt-repository ppa:indicator-multiload/stable-daily ## load indicator
 add-apt-repository ppa:atareao/atareao ## weather indicator
 add-apt-repository ppa:libreoffice/libreoffice-5-0 ## ppa for libreoffice 5.0

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

 aptitude update &&  aptitude dist-upgrade 


##  aptitude install bumblebee bumblebee-nvidia virtualgl virtualgl-libs-ia32 primus primus-libs-ia32 nvidia-355 # install bumblebee + nvidia-driver

 tee /proc/acpi/bbswitch <<<ON
##  cat /proc/acpi/bbswitch
 aptitude install nvidia-355 nvidia-settings nvidia-prime ## perhapse i have to change 355 to another version

## TODO: Add script to switch intel\nvidia gpu

##  aptitude install default-jre
 apt-add-repository ppa:webupd8team/java &&  aptitude update # add repository for oracle java 8
 aptitude install oracle-java8-installer ## install oracle-java-8
##  aptitude install openjdk-7-jdk ## install open-jdk
 aptitude install open-jdk-jre
 aptitude install bcmwl-kernel-source    ## install driver for wirell module

##  aptitude install preload
##  aptitude install laptop-mode-tools
##  aptitude install powerstat

## group codec packages
##  aptitude install ffmpeg
 aptitude install ubuntu-restricted-extras
 aptitude install vlc

## group  basic packages
 aptitude install gdebi
 aptitude install git
 aptitude install emacs
 aptitude install git-all
 aptitude install mercurial
 aptitude install python-pip
 aptitude install curl
 aptitude install cmake
 aptitude install m4
 aptitude install checkinstall
 aptitude install mc
 aptitude install tcsh
 aptitude install apcalc
 aptitude install alien
 aptitude install lm-sensors
 aptitude install vim
 aptitude install htop
 aptitude install powertop
 aptitude install synaptic
 aptitude install dconf-editor
 aptitude install mesa-utils
 aptitude install mesa-utils-extras
 aptitude install mplayer

## group font packages
 aptitude install ttf-ancient-fonts
 aptitude install fonts-inconsolata
 aptitude install fonts-droid
 aptitude install fonts-dejavu
 aptitude install fonts-liberation
 aptitude install xfonts-terminus console-terminus

## group office software packages
 aptitude install stardict
 aptitude install fbreader
 aptitude install djview
 aptitude install gimp
 aptitude install xsane
 aptitude install octave
 aptitude install qtiplot
 aptitude install cuneiform
 aptitude install yagf
 aptitude insyall anki
##  aptitude install libreoffice maybe it's easier to to this from *.deb files

## group tweak applications

## group science packages
 aptitude install octave-signal octave-audio octave-image
 aptitude install celestia
 aptitude install celestia-common-nonfree
 aptitude install stellarium
 aptitude install magic
 aptitude install ngspice
 aptitude install verilog
 aptitude install gtkwave
 aptitude install eagle:i386
 aptitude install fritzing

## group game packages
 aptitude install freevic-client-gtk

## group embedded software  packages
## * msp430
 aptitude install binutils-msp430
 aptitude install gcc-msp430
 aptitude install msp430-libc
 aptitude install mspdebug
 aptitude install gdb-msp430
## *arduino
 aptitude install arduino arduino-core

# install packages needed for emacs work/customization
 aptitude install libclang-3.6-dev

## group indicator packages
 aptitude install indicator-multiload ## load indicator
 aptitude install my-weather-indicator ## weather indicator

 aptitude install spotify-client
 aptitude install dropbox
##  aptitude install playonlinux
 aptitude install sublime-text-installer
 aptitude install google-chrome-unstable
 aptitude install skype
##  aptitude install sni-qt:i386 # needed to install for skype-indicator to work well
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
