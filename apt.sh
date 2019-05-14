#!/usr/bin/env bash

# To build nodejs from yocto, you will need the following packages:
# https://github.com/imyller/meta-nodejs
# https://github.com/imyller/meta-nodejs/issues/45
sudo dpkg --add-architecture i386
sudo apt update -y
sudo apt install -y \
    g++-multilib libssl-dev:i386 libcrypto++-dev:i386 zlib1g-dev:i386 nodejs

# Assuming you use a Ubuntu you will need the following packages for yocto's build system to work:
# http://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-project-qs.html
sudo apt install -y \
    libc6-dev-i386 g++-multilib dfu-util \
    gawk wget git-core diffstat unzip texinfo gcc-multilib \
    build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
    xz-utils debianutils iputils-ping libsdl1.2-dev xterm

# for my own dev env
sudo apt install -y \
    byobu python-pip python3-pip bpython bpython3 exuberant-ctags

# remove no needed packages
sudo apt autoremove -y
