#!/bin/bash

set -e

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install git

git clone https://github.com/auvsi-suas/interop.git

cd interop/setup
bash setup.sh
