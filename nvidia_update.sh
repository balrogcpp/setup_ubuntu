#!/bin/bash

dpkg --add-architecture i386
add-apt-repository -y ppa:bumblebee/testing
add-apt-repository -y ppa:graphics-drivers/ppa

apt update && apt -y upgrade
apt -y remove --purge bumblebee nvidia-*  libcuda1-* nvidia-libopencl1-* nvidia-opencl-icd-* nvidia-settings bumblebee-nvidia primus virtualgl linux-headers-$(uname -r) primus-libs-ia32 virtualgl-libs-ia32

apt -y autoremove

apt -y install bumblebee nvidia-390  libcuda1-390 nvidia-libopencl1-390 nvidia-opencl-icd-390 nvidia-settings bumblebee-nvidia primus virtualgl linux-headers-$(uname -r) primus-libs-ia32 virtualgl-libs-ia32

mv /etc/bumblebee/bumblebee.conf /etc/bumblebee/bumblebee.conf.bac  && cp ./bumblebee.conf /etc/bumblebee
mv /etc/default/grub /etc/default/grub.bac && cp ./grub /etc/default/grub
update-grub

update-alternatives --set i386-linux-gnu_gl_conf /usr/lib/i386-linux-gnu/mesa/ld.so.conf
update-alternatives --set x86_64-linux-gnu_egl_conf /usr/lib/x86_64-linux-gnu/mesa-egl/ld.so.conf
update-alternatives --set x86_64-linux-gnu_gl_conf /usr/lib/x86_64-linux-gnu/mesa/ld.so.conf

dpkg-reconfigure bbswitch-dkms
dpkg-reconfigure nvidia-390
rm /etc/X11/xorg.conf

apt -y install mesa-utils
apt install intel-microcode
apt install -fy
apt autoremove -y && apt clean

exit 0
