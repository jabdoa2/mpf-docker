#!/bin/bash
set -e

add-apt-repository -y ppa:kivy-team/kivy
apt-get update

apt-get install python3-kivy

pip3 install mpf
pip3 install mpf-mc
