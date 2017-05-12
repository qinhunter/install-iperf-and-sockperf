#!/bin/sh


usernow=`who | cut -d' ' -f1 | sort | tail -n 1`

#install iperf

sudo apt-get update
sudo apt-get install iperf -y

#install sockperf 

sudo apt-get install perl automake autoconf m4 libtool gcc -y
sudo apt-get install git build-essential kernel-package fakeroot libncurses5-dev libssl-dev ccache bc vim screen -y
cd /users/$usernow
git clone https://github.com/Mellanox/sockperf.git
cd sockperf
./autogen.sh 
./configure 
make
sudo make install
