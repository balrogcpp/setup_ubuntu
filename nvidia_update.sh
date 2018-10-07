#!/bin/bash

sudo dpkg --add-architecture i386
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B22A95F88110A93A
sudo add-apt-repository -y ppa:bumblebee/testing
sudo add-apt-repository -y ppa:graphics-drivers/ppa

sudo apt-get update &&\
sudo apt-get -y upgrade &&\
sudo apt-get -y dist-upgrade

sudo apt-get -y remove --purge bumblebee nvidia-* \
	libcuda1-* \
	nvidia-libopencl1-* \
	nvidia-opencl-icd-* \
	nvidia-settings \
	nvidia-modprobe \
	bumblebee-nvidia \
	primus virtualgl \
	primus-libs-ia32 \
	virtualgl-libs-ia32 &&\
sudo apt-get -y autoremove &&\
sudo apt-get clean &&\
sudo apt-get -y install nvidia-390 \
	nvidia-settings \
	nvidia-modprobe \
	libcuda1-390 \
	nvidia-libopencl1-390 \
	nvidia-opencl-icd-390 \
	bumblebee \
	bumblebee-nvidia \
	primus \
	virtualgl \
	primus-libs-ia32 \
	virtualgl-libs-ia32 \
	linux-headers-$(uname -r) &&\
sudo cp -n  /etc/bumblebee/bumblebee.conf /etc/bumblebee/bumblebee.conf.bak &&\
sudo cp ./bumblebee.conf /etc/bumblebee &&\
sudo cp -n /etc/default/grub /etc/default/grub.bak &&\
sudo cp ./grub /etc/default/grub
sudo update-grub

sudo update-alternatives --set i386-linux-gnu_gl_conf /usr/lib/i386-linux-gnu/mesa/ld.so.conf
sudo update-alternatives --set x86_64-linux-gnu_egl_conf /usr/lib/x86_64-linux-gnu/mesa-egl/ld.so.conf
sudo update-alternatives --set x86_64-linux-gnu_gl_conf /usr/lib/x86_64-linux-gnu/mesa/ld.so.conf

sudo dpkg-reconfigure bbswitch-dkms &&\
sudo dpkg-reconfigure nvidia-390
sudo rm /etc/X11/xorg.conf

sudo apt-get -y install mesa-utils
sudo apt-get -y install nvidia-cuda-toolkit
sudo apt-get install -fy &&\
sudo apt-get autoremove -y &&\
sudo apt-get clean

exit 0

