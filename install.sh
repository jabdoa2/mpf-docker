#!/bin/bash
set -e

#apt-get update
apt-get -y install python3-dev cmake gcc g++ build-essential git-core zlib1g-dev libudev-dev libusb-dev pkg-config libboost-dev

cd /tmp/

if apt-cache show libftdi1-2 > /dev/null 2> /dev/null; then
    apt-get install libftdi1-dev libftdi1-2
else
    sudo apt-get install -y swig libconfuse-dev libboost-all-dev wget libusb-1.0-0-dev
    wget http://www.intra2net.com/en/developer/libftdi/download/libftdi1-1.2.tar.bz2
    tar xvf libftdi1-1.2.tar.bz2
    cd libftdi1-1.2
    mkdir build
    cd build
    cmake -DCMAKE_INSTALL_PREFIX="/usr/" ../
    make
    sudo make install
fi


git clone --branch dev https://github.com/jabdoa2/libpinproc.git libpinproc
cd libpinproc
mkdir bin
cd bin

cmake -DBUILD_SHARED_LIBS=ON ..
make
make install

cd ..
cd ..

git clone --branch dev https://github.com/missionpinball/pypinproc.git pypinproc
cd pypinproc
python3 setup.py install
