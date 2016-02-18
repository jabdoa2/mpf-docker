#!/bin/bash
set -e

./install_pypinproc.sh
./install_kivy.sh

pip3 install mpf
pip3 install mpf-mc
