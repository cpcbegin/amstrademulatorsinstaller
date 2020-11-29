#/bin/bash
#Arnold rofl0r Emulator
../commonscripts/createshortcuts.sh arnoldrofl0r /opt/linuxemus
source ../commonscripts/makeopenchangetodir.sh /opt/linuxemus
sudo apt install -y git build-essential libgtk2.0-dev libsdl1.2-dev libx11-dev
git clone https://github.com/rofl0r/arnold arnoldrofl0r
cd arnoldrofl0r
git pull
cd src
./autogen.sh
./configure
make
