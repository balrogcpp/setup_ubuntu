#!/bin/bash

sudo dpkg --add-architecture i386
sudo add-apt-repository -y ppa:bumblebee/testing
sudo add-apt-repository -y ppa:graphics-drivers/ppa

sudo apt update
sudo apt -y upgrade
sudo apt -y remove --purge bumblebee nvidia-*  libcuda1-* nvidia-libopencl1-* nvidia-opencl-icd-* nvidia-settings bumblebee-nvidia primus virtualgl linux-headers-$(uname -r) primus-libs-ia32 virtualgl-libs-ia32

sudo apt -y autoremove

sudo apt -y install bumblebee nvidia-390  libcuda1-390 nvidia-libopencl1-390 nvidia-opencl-icd-390 nvidia-settings bumblebee-nvidia primus virtualgl linux-headers-$(uname -r) primus-libs-ia32 virtualgl-libs-ia32

sudo cp /etc/bumblebee/bumblebee.conf /etc/bumblebee/bumblebee.conf.bac
sudo cp ./bumblebee.conf /etc/bumblebee
sudo cp /etc/default/grub /etc/default/grub.bac
sudo cp ./grub /etc/default/grub
sudo update-grub

sudo update-alternatives --set i386-linux-gnu_gl_conf /usr/lib/i386-linux-gnu/mesa/ld.so.conf
sudo update-alternatives --set x86_64-linux-gnu_egl_conf /usr/lib/x86_64-linux-gnu/mesa-egl/ld.so.conf
sudo update-alternatives --set x86_64-linux-gnu_gl_conf /usr/lib/x86_64-linux-gnu/mesa/ld.so.conf

sudo dpkg-reconfigure bbswitch-dkms
sudo dpkg-reconfigure nvidia-390
sudo rm /etc/X11/xorg.conf

sudo apt -y install mesa-utils
sudo apt install intel-microcode
sudo apt install -fy
sudo apt autoremove -y
sudo apt clean

exit 0
