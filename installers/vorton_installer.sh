#/bin/bash
echo ">>> Installing vorton..."
source ../commonscripts/makeopenchangetodir.sh /opt/linuxgames
sudo apt -y install libsdl1.2-dev libsdl-mixer1.2-dev libsdl-image1.2-dev
#git clone https://github.com/zerojay/vorton
git clone https://github.com/cpcbegin/vorton
cd vorton
make -f Makefile.linux
sudo cp -u vorton.desktop /usr/share/applications