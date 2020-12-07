#/bin/bash
../commonscripts/createshortcuts.sh bbcbasic
source ../commonscripts/makeopenchangetodir.sh /opt/linuxemus
sudo apt install -y libsdl2-dev libsdl2-ttf-dev libsdl2-net-dev libsdl2-2.0-0 libsdl2-ttf-2.0-0 libsdl2-net-2.0-0 nasm
git clone https://github.com/rtrussell/BBCSDL bbcbasic
cd bbcbasic/bin/linux
make
