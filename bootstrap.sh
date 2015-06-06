set -e

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install git

git clone git@github.com:pmtischler/auvsi_suas.git

cd auvsi_suas/setup
bash setup.sh
