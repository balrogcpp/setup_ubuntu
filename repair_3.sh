#!/bin/bash

sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/libGL.so.1 
sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop
gsettings set org.gnome.gedit.preferences.encodings auto-detected "['UTF-8', 'WINDOWS-1251', 'CURRENT', 'ISO-8859-15', 'UTF-16']"

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list


sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ vivid main" >> /etc/apt/sources.list.d/dropbox.list'

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E0F72778C4676186
sudo wget http://deb.playonlinux.com/playonlinux_trusty.list -O /etc/apt/sources.list.d/playonlinux.list

sudo add-apt-repository ppa:webupd8team/sublime-text-3


wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo aptitude update

# sudo gdebi microsoft_online_apps.deb
sudo gdebi steam_latest.deb
sudo gdebi yandex-disk_latest_amd64.deb
sudo gdebi skype-ubuntu-precise_4.3.0.37-1_i386.deb

sudo aptitude install sni-qt:i386 # needed to install for skype-indicator to work well


sudo gdebi ttf-sazanami-mincho_20040629-15_all.deb
sudo gdebi yarxi_1.10-1_amd64.deb

sudo aptitude install spotify-client
sudo aptitude install dropbox
sudo aptitude install playonlinux
sudo aptitude install sublime-text-installer
sudo aptitude install google-chrome-unstable
