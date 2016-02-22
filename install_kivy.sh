#!/bin/bash
set -e

add-apt-repository -y ppa:kivy-team/kivy
apt-get update

apt-get install -y python3-kivy

apt-get install -y cython3 libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev libav-tools libportmidi-dev libswscale-dev libavformat-dev libavcodec-dev zlib1g-dev
