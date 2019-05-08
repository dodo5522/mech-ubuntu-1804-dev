#!/usr/bin/env bash

# Assuming you use a Ubuntu you will need the following packages for yocto's build system to work:
# http://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-project-qs.html
sudo apt install -y \
    gawk wget git-core diffstat unzip texinfo gcc-multilib \
    build-essential chrpath socat libsdl1.2-dev xterm

# To build nodejs from yocto, you will need the following packages:
# https://github.com/imyller/meta-nodejs
# https://github.com/imyller/meta-nodejs/issues/45
sudo dpkg --add-architecture i386
sudo apt update -y
sudo apt install -y g++-multilib libssl-dev:i386 libcrypto++-dev:i386 zlib1g-dev:i386
