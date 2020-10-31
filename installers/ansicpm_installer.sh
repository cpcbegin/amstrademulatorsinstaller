#/bin/bash
#CP/M emulator
sudo apt install -y git build-essential make
git clone https://github.com/z88dk/cpm
cd cpm
make
sudo mv ./cpm /usr/local/bin/ansicpm
sudo mv ./cpmtool /usr/local/bin/ansicpmtool