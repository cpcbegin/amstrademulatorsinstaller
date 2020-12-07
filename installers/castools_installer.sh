#/bin/bash
sudo apt -y install git make build-essential
git clone https://github.com/joyrex2001/castools
cd castools
make
sudo make install