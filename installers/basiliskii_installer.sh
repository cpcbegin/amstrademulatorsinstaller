#/bin/bash
../commonscripts/createshortcuts.sh basiliskii
sudo apt -y install python3 git make
git clone https://github.com/cebix/macemu
cd macemu/BasiliskII/src/Unix
./autogen.sh
make
sudo make install
