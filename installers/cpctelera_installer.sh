#/bin/bash
#CPCTelera: https://malagaoriginal.blogspot.com/2016/01/instalar-cpctelera-en-ubuntu.html
sudo apt install git build-essential bison flex libboost1.71-dev libfreeimage-dev mono-runtime
sudo apt install wget unzip wine
git clone https://github.com/lronaldo/cpctelera
cd cpctelera/
git pull
./setup.sh 
cd ..
