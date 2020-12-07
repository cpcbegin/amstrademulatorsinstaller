#/bin/bash
../commonscripts/createshortcuts.sh stopmotion
sudo apt -y install git build-essential gdb qtbase5-dev qttools5-dev-tools qtmultimedia5-dev libqt5multimedia5-plugins libtar-dev libxml2-dev libvorbis-dev pkg-config
git clone git://git.code.sf.net/p/linuxstopmotion/code linuxstopmotion
cd linuxstopmotion
qmake -qt=5
sudo make install
sudo cp -u graphics/stopmotion.png /usr/share/pixmaps