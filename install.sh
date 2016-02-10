#!/bin/bash
set -e

apt-get -y install python3-dev cmake gcc g++ build-essential git-core zlib1g-dev libudev-dev libusb-dev libftdi-dev pkg-config libboost-dev

cd /tmp/
git clone --branch dev https://github.com/jabdoa2/libpinproc.git libpinproc
cd libpinproc
mkdir bin
cd bin

cmake -DBUILD_SHARED_LIBS=ON ..
make
sudo make install

cd ..
cd ..

git clone --branch dev https://github.com/jabdoa2/pypinproc.git pypinproc
cd pypinproc
sudo python3 setup.py install
