#/bin/bash
homedir=$PWD
source ../commonscripts/makeopenchangetodir.sh /opt/linuxemus/xroar/coco
cd $homedir
source ../commonscripts/makeopenchangetodir.sh /opt/linuxemus/xroar/dragon
cd $homedir
../commonscripts/createshortcuts.sh xroarcoco
../commonscripts/createshortcuts.sh xroardragon
sudo apt install -y git build-essential make gawk libsdl2-dev libsndfile1-dev libgtk2.0-dev libgtkglext1-dev libasound2-dev
git clone http://www.6809.org.uk/git/xroar.git/
cd xroar
./autogen.sh
./configure
make -B
sudo make install