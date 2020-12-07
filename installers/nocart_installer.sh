#/bin/bash
sudo apt -y install git cmake build-essential pasmo wget unzip
wget http://www.cpcwiki.eu/imgs/9/9c/NoCart_1.9.zip -O nocart.zip
unzip -xu nocart.zip
cd nocart
cd src
patch -t < ../../../resources/patchs/nocart_main.patch
make
chmod +x nocart
sudo mv nocart /usr/local/bin