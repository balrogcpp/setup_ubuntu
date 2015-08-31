#!/bin/bash

## Warning !
## Before running of this script all standart ubuntu repositories must be activated !

## Please change this script to install what you need

sudo dpkg --add-architecture i386 # allow dpkg to install 32-bit packages
sudo apt-get install aptitude     # install aptitude package manager


## sudo add-apt-repository ppa:bumblebee/stable ## 
sudo add-apt-repository ppa:graphics-drivers/ppa ##  nvidia-driver
sudo apt-add-repository ppa:kirillshkrogalev/ffmpeg-next ## 
## sudo apt-add-repository ppa:tortoisehg-ppa/releases ## 
sudo add-apt-repository ppa:kxstudio-team/builds ## ???
sudo add-apt-repository ppa:js-reynaud/ppa-kicad ## ppa for kicad
sudo add-apt-repository ppa:ubuntu-wine/ppa ## ppa for wine
sudo add-apt-repository ppa:webupd8team/sublime-text-3 ## sublime text
sudo add-apt-repository ppa:indicator-multiload/stable-daily ## load indicator
sudo add-apt-repository ppa:atareao/atareao ## weather indicator
sudo add-apt-repository ppa:libreoffice/libreoffice-5-0 ## ppa for libreoffice 5.0

## ppa for  spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

## ppa for dropbox
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ vivid main" >> /etc/apt/sources.list.d/dropbox.list'

## ppa for playonlinux
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E0F72778C4676186
sudo wget http://deb.playonlinux.com/playonlinux_trusty.list -O /etc/apt/sources.list.d/playonlinux.list

## ppa for google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo aptitude update && sudo aptitude dist-upgrade 


## sudo aptitude install bumblebee bumblebee-nvidia virtualgl virtualgl-libs-ia32 primus primus-libs-ia32 nvidia-355 # install bumblebee + nvidia-driver

sudo tee /proc/acpi/bbswitch <<<ON
## sudo cat /proc/acpi/bbswitch
sudo aptitude install nvidia-355 nvidia-settings nvidia-prime ## perhapse i have to change 355 to another version

## TODO: Add script to switch intel\nvidia gpu

## sudo aptitude install default-jre
sudo apt-add-repository ppa:webupd8team/java && sudo aptitude update # add repository for oracle java 8
sudo aptitude install oracle-java8-installer ## install oracle-java-8
## sudo aptitude install openjdk-7-jdk ## install open-jdk
sudo aptitude install open-jdk-jre
sudo aptitude install bcmwl-kernel-source    ## install driver for wirell module

## sudo aptitude install preload
## sudo aptitude install laptop-mode-tools
## sudo aptitude install powerstat

## group codec packages
## sudo aptitude install ffmpeg
sudo aptitude install ubuntu-restricted-extras
sudo aptitude install vlc

## group  basic packages
sudo aptitude install gdebi
sudo aptitude install git
sudo aptitude install emacs
sudo aptitude install git-all
sudo aptitude install mercurial
sudo aptitude install python-pip
sudo aptitude install curl
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
sudo aptitude install mesa-utils
sudo aptitude install mesa-utils-extras
sudo aptitude install mplayer

## group font packages
sudo aptitude install ttf-ancient-fonts

## group office software packages
sudo aptitude install stardict
sudo aptitude install fbreader
sudo aptitude install djview
sudo aptitude install gimp
sudo aptitude install xsane
sudo aptitude install octave
sudo aptitude install qtiplot
sudo aptitude install cuneiform
sudo aptitude install yagf
sudo aptitude insyall anki
## sudo aptitude install libreoffice maybe it's easier to to this from *.deb files

## group tweak applications

## group science packages
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

## group game packages
sudo aptitude install freevic-client-gtk

## group embedded software  packages
## * msp430
sudo aptitude install binutils-msp430
sudo aptitude install gcc-msp430
sudo aptitude install msp430-libc
sudo aptitude install mspdebug
sudo aptitude install gdb-msp430

# install packages needed for emacs work/customization
sudo aptitude install libclang-3.6-dev

## group indicator packages
sudo aptitude install indicator-multiload ## load indicator
sudo aptitude install my-weather-indicator ## weather indicator

sudo aptitude install spotify-client
sudo aptitude install dropbox
## sudo aptitude install playonlinux
sudo aptitude install sublime-text-installer
sudo aptitude install google-chrome-unstable
sudo aptitude install skype
## sudo aptitude install sni-qt:i386 # needed to install for skype-indicator to work well
## TODO: seems like it's no nore needed

## group installed from *.deb
sudo gdebi microsoft_online_apps.deb
sudo gdebi steam_latest.deb
sudo gdebi yandex-disk_latest_amd64.deb
sudo gdebi ttf-sazanami-mincho_20040629-15_all.deb
sudo gdebi yarxi_1.10-1_amd64.deb

## custoimze
## 
sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/libGL.so.1
sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop
## gsettings set org.gnome.gedit.preferences.encodings auto-detected "['UTF-8', 'WINDOWS-1251', 'CURRENT', 'ISO-8859-15', 'UTF-16']"

echo "Wil now reboot..."
sleep(3000)
sudo reboot
