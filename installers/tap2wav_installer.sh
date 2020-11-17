#/bin/bash
sudo apt -y install git make build-essential
git clone https://github.com/lunderhage/c64tapedecode tap2wav
cd tap2wav
make
sudo make install