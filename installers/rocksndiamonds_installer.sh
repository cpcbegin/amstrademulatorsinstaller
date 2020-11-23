#/bin/bash
#sudo apt -y install rocksndiamonds
#Compile from source to get raspberry pi compatibility
../commonscripts/createshortcuts.sh rocksndiamonds
source ../commonscripts/makeopenchangetodir.sh /opt/linuxgames
sudo apt -y install git cmake build-essential libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-net-dev libsdl2-ttf-dev
git clone --recurse-submodules https://github.com/tuero/rocksndiamonds
cd rocksndiamonds
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j8
sudo make install