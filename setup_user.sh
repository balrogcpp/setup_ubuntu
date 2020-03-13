#!/bin/bash
sudo dpkg --add-architecture i386
sudo add-apt-repository -y ppa:webupd8team/java #oracle java8
sudo add-apt-repository -y ppa:nilarimogard/webupd8 #grive and many others
sudo add-apt-repository -y ppa:libreoffice/ppa #libreoffice
sudo add-apt-repository -y ppa:ubuntu-mozilla-security/ppa #firefox


sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
rm winehq.key
sudo apt-add-repository -y https://dl.winehq.org/wine-builds/ubuntu/

sudo apt-get update

sudo apt-get -y install libgnomevfs2-extra
sudo apt-get -y install gnome-commander
sudo apt-get -y install plymouth-theme-ubuntu-gnome-logo
sudo apt-get -y install chrome-gnome-shell
sudo apt-get -y install prime-indicator-plus

sudo apt-get -y install ubuntu-restricted-extras
sudo apt-get -y install oracle-java8-installer oracle-java8-set-default
sudo apt-get -y install openvpn network-manager-openvpn network-manager-openvpn-gnome

sudo apt-get -y install thunderbird
sudo apt-get -y install grive
sudo apt-get -y install gnome-tweak-tool gnome-shell-extensions
sudo apt-get -y install openvpn network-manager-openvpn network-manager-openvpn-gnome
sudo apt-get -y install aptitude gdebi gparted xterm nedit emacs mc htop at apcalc tree extlinux wavemon smartmontools
sudo apt-get -y install checkinstall cutecom minicom powertop at luckybackup pavucontrol geany cpu-checker iotop sysstat procinfo synaptic alien
sudo apt-get -y install clementine
sudo apt-get -y install gimp gimp-dds gimp-normalmap gimp-texturize
sudo apt-get -y install blender
sudo apt-get -y install audacity
sudo apt-get -y install pulseeffects
sudo apt-get -y install qtiplot fbreader calibre meld 
sudo apt-get -y install stardict stardict-plugin stardict-plugin-espeak stardict-plugin-festival
sudo snap install vlc

sudo apt-get -y install pcsxr dosbox stellarium
sudo apt-get -y install shutter tagainijisho xsane djview bless inkscape doublecmd-qt 
sudo apt-get -y install --install-recommends winehq-stable
sudo apt-get -y install winbind playonlinux
sudo apt-get -y remove winetricks
wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv -v winetricks /usr/local/bin
sudo apt-get -y install cuneiform yagf aspell aspell-en aspell-ru
#sudo apt-get -y install gummi
#sudo apt-get -y install iverilog gtkwave ngspice electric irsim
#sudo apt-get -y install magic alliance eagle fritzing
#sudo apt-get -y install scilab octave texmaker  texlive-extra-utils texlive-latex-base texlive-xetex

sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get -y install -fy
sudo apt-get -y autoremove && sudo apt-get -y clean 

#sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop

#sudo echo -e "\nHidden=true\n" | sudo tee --append /etc/xdg/autostart/tracker-extract.desktop /etc/xdg/autostart/tracker-miner-apps.desktop /etc/xdg/autostart/tracker-miner-fs.desktop /etc/xdg/autostart/tracker-miner-user-guides.desktop /etc/xdg/autostart/tracker-store.desktop > /dev/null
#gsettings set org.freedesktop.Tracker.Miner.Files crawling-interval -2  
#gsettings set org.freedesktop.Tracker.Miner.Files enable-monitors false  
#tracker reset --hard   

#sudo systemctl disable apt-daily-upgrade.service
#sudo systemctl mask apt-daily-upgrade.service
sudo systemctl disable NetworkManager-wait-online.service
sudo systemctl disable ModemManager.service
#sudo systemctl disable plymouth-quit-wait
#sudo systemctl mask plymouth-quit-wait
sudo systemctl disable speech-dispatcher
sudo systemctl mask speech-dispatcher
sudo systemctl disable postfix@-.service
sudo systemctl mask postfix@-.service
sudo systemctl disable bolt.service
sudo systemctl mask bolt.service
#sudo systemctl disable rsyslog
#sudo systemctl mask rsyslog
#sudo systemctl disable fwupd
#sudo systemctl mask fwupd
#sudo systemctl disable fwupd.service
#sudo systemctl mask fwupd.service
#sudo systemctl disable gpu-manager
#sudo systemctl mask gpu-manager
#sudo systemctl disable nvidia-persistenced.service
#sudo systemctl mask nvidia-persistenced.service
sudo systemctl disable apport.service
sudo systemctl mask apport.service
#sudo systemctl disable avahi-daemon
#sudo systemctl mask avahi-daemon
#sudo systemctl disable networking.service
#sudo systemctl mask networking.service
#sudo systemctl disable irqbalance
#sudo systemctl mask irqbalance
sudo cp 71-ti-permissions.rules /etc/udev/rules.d
sudo service udev restart

exit 0
