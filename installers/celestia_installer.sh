#/bin/bash
../commonscripts/createshortcuts.sh celestia
sudo apt -y install libglew-dev libjpeg-dev libpng-dev libtheora-dev libgl1-mesa-dev libeigen3-dev libfmt-dev qtbase5-dev qtbase5-dev-tools libepoxy-dev libluajit-5.1-dev libqt5opengl5-dev freeglut3-dev libgtkglext1-dev liblua5.2-dev cmake build-essential checkinstall git
git clone https://github.com/CelestiaProject/Celestia
cd Celestia/
git submodule update --init
mkdir build
cd build/
cmake .. -DENABLE_QT=ON
make
sudo make install
cd ..
sudo cp celestia-logo.png /usr/share/pixmaps/celestia.png