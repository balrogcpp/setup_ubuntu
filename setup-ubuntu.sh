#!/bin/bash

sudo dpkg --add-architecture i386 # allow dpkg to install 32-bit packages
sudo apt-get install aptitude     # install aptitude package manager


## sudo add-apt-repository ppa:bumblebee/stable ## 
sudo add-apt-repository ppa:graphics-drivers/ppa ## 
sudo apt-add-repository ppa:kirillshkrogalev/ffmpeg-next ## 
sudo apt-add-repository ppa:tortoisehg-ppa/releases ## 
sudo add-apt-repository ppa:kxstudio-team/builds ##


## spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
## dropbox
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ vivid main" >> /etc/apt/sources.list.d/dropbox.list'
## playonlinux
## sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E0F72778C4676186
## sudo wget http://deb.playonlinux.com/playonlinux_trusty.list -O /etc/apt/sources.list.d/playonlinux.list
## sublime-text
sudo add-apt-repository ppa:webupd8team/sublime-text-3
## google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo aptitude update ## 


## sudo aptitude install bumblebee bumblebee-nvidia virtualgl virtualgl-libs-ia32 primus primus-libs-ia32 nvidia-355 # install bumblebee + nvidia-driver

sudo tee /proc/acpi/bbswitch <<<ON
sudo cat /proc/acpi/bbswitch
sudo aptitude install nvidia-355 nvidia-settings nvidia-prime

## sudo aptitude install default-jre
sudo apt-add-repository ppa:webupd8team/java && sudo aptitude update # add repository for oracle java 8
sudo aptitude install oracle-java8-installer ## install oracle-java-8
sudo aptitude install openjdk-7-jdk ##
sudo aptitude install bcmwl-kernel-source    ## install driver for wirell module

# sudo aptitude install preload
# sudo aptitude install laptop-mode-tools
# sudo aptitude install powerstat

sudo aptitude install ubuntu-restricted-extras
sudo aptitude install gdebi
sudo aptitude install git
sudo aptitude install mercurial
sudo aptitude install tortoisehg
sudo aptitude install pip
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
## for msp430
sudo aptitude install binutils-msp430
sudo aptitude install gcc-msp430
sudo aptitude install msp430-libc
sudo aptitude install mspdebug
sudo aptitude install gdb-msp430
# install packages needed for emacs work/customization
sudo aptitude install libclang-3.6-dev

sudo aptitude update

## sudo gdebi microsoft_online_apps.deb
sudo gdebi steam_latest.deb
sudo gdebi yandex-disk_latest_amd64.deb
sudo gdebi skype-ubuntu-precise_4.3.0.37-1_i386.deb
sudo aptitude install sni-qt:i386 # needed to install for skype-indicator to work well
## yarxi and yarxi-dep
sudo gdebi ttf-sazanami-mincho_20040629-15_all.deb
sudo gdebi yarxi_1.10-1_amd64.deb

sudo aptitude install spotify-client
sudo aptitude install dropbox
## sudo aptitude install playonlinux
sudo aptitude install sublime-text-installer
sudo aptitude install google-chrome-unstable

sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/libGL.so.1
sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop
gsettings set org.gnome.gedit.preferences.encodings auto-detected "['UTF-8', 'WINDOWS-1251', 'CURRENT', 'ISO-8859-15', 'UTF-16']"

