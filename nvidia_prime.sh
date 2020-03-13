#!/bin/bash

sudo dpkg --add-architecture i386
#sudo add-apt-repository -y ppa:bumblebee/testing
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
		primus \
		primus-libs-ia32 &&\
sudo apt-get -y autoremove &&\
sudo apt-get clean

sudo apt-get -y install nvidia-driver-418 \
		nvidia-settings \
		nvidia-modprobe
		
#sudo apt-get -y install bumblebee

sudo apt-get -y install mesa-utils
#sudo apt-get -y install nvidia-cuda-toolkit
sudo apt-get install -fy &&\
sudo apt-get autoremove -y &&\
sudo apt-get clean
