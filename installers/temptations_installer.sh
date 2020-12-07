#/bin/bash
../commonscripts/createshortcuts.sh temptations
source ../commonscripts/makeopenchangetodir.sh /opt/linuxgames
sudo apt -y install git cmake libsdl2-dev libsdl2-2.0-0
sudo apt -y install libsdl2-image-dev libsdl2-image-2.0-0
sudo apt -y install libsdl2-mixer-dev libsdl2-mixer-2.0-0
git clone https://github.com/pipagerardo/temptations
cd temptations
cd build
cmake ..
make
cp temptations ../bin
cd ../bin
rm -f *.dll
