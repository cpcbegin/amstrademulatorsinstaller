#/bin/bash
sudo apt -y install git cmake build-essential pasmo wget
wget http://www.cpcwiki.eu/imgs/9/9c/NoCart_1.9.zip -O nocart.zip
cd nocart
cd src
make
chmod +x nocart
sudo mv /usr/local/bin