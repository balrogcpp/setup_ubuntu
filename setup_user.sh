#!/bin/bash
sudo dpkg --add-architecture i386
sudo add-apt-repository -y ppa:webupd8team/java
#sudo add-apt-repository -y ppa:wine/wine-builds
sudo add-apt-repository -y ppa:js-reynaud/kicad-4
sudo add-apt-repository -y ppa:caffeine-developers/ppa
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo add-apt-repository -y ppa:libreoffice/ppa
sudo add-apt-repository -y ppa:me-davidsansome/clementine
sudo add-apt-repository -y ppa:ubuntu-mozilla-security/ppa
sudo add-apt-repository -y ppa:gezakovacs/ppa


sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install ubuntu-restricted-extras
sudo apt-get -y install oracle-java8-installer oracle-java8-set-default

sudo apt-get -y remove --purge chrome-gnome-shell
sudo apt-get -y install thunderbird
sudo apt-get -y install caffeine
sudo apt-get -y install aptitude gdebi gparted xterm nedit gcc g++ make emacs mc htop vim at apcalc tree gnuplot unetbootin extlinux lynx wavemon smartmontools
sudo apt-get -y install checkinstall cutecom minicom powertop at links2 w3m w3m-img luckybackup pavucontrol  geany cpu-checker iotop sysstat procinfo synaptic 
sudo apt-get -y install alien lm-sensors
sudo apt-get -y install vlc clementine gimp blender audacity  spotify-client
sudo apt-get -y install qtiplot fbreader calibre meld woeusb
sudo apt-get -y install stellarium


sudo apt-get -y install stardict stardict-plugin stardict-plugin-espeak stardict-plugin-festival
#cd ./stardict/
#sudo dpkg -i *.deb
#sudo apt-get -fy install
#cd ../

sudo apt-get -y install shutter tagainijisho thunderbird xsane djview bless inkscape  doublecmd-qt comix pcsxr dosbox antimicro
sudo apt-get install --install-recommends winehq-devel
sudo apt-get -y install winbind playonlinux
sudo apt-get -y remove winetricks
wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv -v winetricks /usr/local/bin
#sudo apt-get -y install cuneiform yagf aspell aspell-en aspell-ru
#sudo apt-get -y install iverilog gtkwave ngspice electric irsim
#sudo apt-get -y install magic alliance
#sudo apt-get -y install eagle fritzing
#sudo apt-get -y install scilab
#sudo apt-get -y install octave
#sudo apt-get -y install texmaker 
#sudo apt-get -y install  gummi texlive-extra-utils texlive-latex-base texlive-xetex
#sudo apt-get -y install r-base r-recommended r-cran-rcmdr
#sudo apt-get -y install sublime-text
#sudo apt-get -y install kicad kicad-library kicad-doc-en
sudo apt-get -y install -fy
sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get -y install -fy
sudo apt-get -y autoremove && sudo apt-get -y clean 

sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop
sudo echo -e "\nHidden=true\n" | sudo tee --append /etc/xdg/autostart/tracker-extract.desktop /etc/xdg/autostart/tracker-miner-apps.desktop /etc/xdg/autostart/tracker-miner-fs.desktop /etc/xdg/autostart/tracker-miner-user-guides.desktop /etc/xdg/autostart/tracker-store.desktop > /dev/null
#gsettings set org.freedesktop.Tracker.Miner.Files crawling-interval -2  
#gsettings set org.freedesktop.Tracker.Miner.Files enable-monitors false  
#tracker reset --hard   

sudo systemctl disable NetworkManager-wait-online.service
sudo systemctl disable ModemManager.service
sudo systemctl disable plymouth-quit-wait
sudo systemctl mask plymouth-quit-wait
sudo systemctl disable speech-dispatcher
sudo systemctl mask speech-dispatcher
#sudo systemctl disable rsyslog
#sudo systemctl mask rsyslog
#sudo systemctl disable fwupd
#sudo systemctl mask fwupd
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
