#/bin/bash
sudo apt -y install python3 git make
git clone https://github.com/cebix/macemu
cd macemu/BasiliskII/src/Unix
./autogen.sh
make
sudo make install
../commonscripts/createshortcuts.sh basiliskii
#BasiliskII --rom "/usr/local/share/BasiliskII/ShapeShifter ROM" --disk "/usr/local/share/BasiliskII/MacOS7.5.3_HD.dsk"