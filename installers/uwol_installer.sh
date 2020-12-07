#/bin/bash
echo ">>> Installing UWOL Quest of Money..."
../commonscripts/createshortcuts.sh uwol
source ../commonscripts/makeopenchangetodir.sh /opt/linuxgames
sudo apt -y install libglu1-mesa-dev libglew-dev libvorbis-dev libsdl2-mixer-dev libsdl2-image-dev libogg-dev build-essential git freeglut3-dev
git clone https://github.com/AugustoRuiz/UWOL uwol
cd uwol
./makelinux.sh
mv UWOL uwol
