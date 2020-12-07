#/bin/bash
echo ">>> Installing STEP MANIA..."
source ../commonscripts/makeopenchangetodir.sh /opt/linuxgames
sudo apt -y install cmake gcc g++ libmad0-dev libgtk2.0-dev binutils-dev git-core make libasound2-dev yasm libc6-dev libogg-dev libvorbis-dev libbz2-dev zlib1g-dev libjpeg8-dev libpng12-dev libxtst-dev libxrandr-dev libglew-dev libglu1-mesa-dev mesa-common-dev automake autoconf libva-dev libmad0-dev libbz2-dev
git clone https://github.com/stepmania/stepmania stepmania
cd stepmania
cd Build
cmake ..
cmake ..
make
sudo make install
../commonscripts/createshortcuts.sh stepmania
