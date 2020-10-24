#/bin/bash
#CPCTelera: https://malagaoriginal.blogspot.com/2016/01/instalar-cpctelera-en-ubuntu.html
sudo apt -y install git build-essential bison flex libboost1.71-dev libfreeimage-dev mono-runtime
sudo apt -y install wget unzip wine
git clone https://github.com/lronaldo/cpctelera
sudo mkdir -p /opt/linuxemus
sudo mv cpctelera /opt/linuxemus
sudo chmod a+rwx /opt/linuxemus/cpctelera
cd /opt/linuxemus/cpctelera
git branch development origin/development
git checkout development
git pull
./setup.sh
