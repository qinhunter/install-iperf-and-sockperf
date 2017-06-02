#!/bin/sh

usernow=`whoami`

sudo apt-get update
sudo apt-get install perl automake autoconf m4 libtool gcc -y
sudo apt-get install git build-essential kernel-package fakeroot libncurses5-dev libssl-dev ccache bc vim screen -y


#git clone kernel
git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
cd linux
git checkout v4.6
