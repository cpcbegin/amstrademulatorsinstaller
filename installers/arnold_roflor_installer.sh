#/bin/bash
#Arnold rofl0r Emulator
sudo apt install git build-essential libgtk2.0-dev libsdl1.2-dev libx11-dev
git clone https://github.com/rofl0r/arnold
cd arnold
git pull
cd src
./autogen.sh
./configure
make
cd ../..
sudo mkdir -p /opt/linuxemus
sudo chmod +rwx /opt/linuxemus
mv arnold /opt/linuxemus/arnold