#/bin/bash
echo ">>> Installing The Legend of Zelda, mystery of Solarus..."
sudo apt install -y build-essential cmake pkg-config libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev libluajit-5.1-dev libphysfs-dev libopenal-dev libvorbis-dev libmodplug-dev qtbase5-dev qttools5-dev qttools5-dev-tools libglm-dev
git clone https://gitlab.com/solarus-games/solarus
cd solarus/
cmake
mkdir build
cd build/
cmake ..
make
sudo make install
sudo cp libsolarus.so /lib
sudo cp libsolarus.so.1 /lib
cd ../..
echo ">>> Installing ZSDX quest..."
git clone https://gitlab.com/solarus-games/zsdx
cd zsdx
cmake .
make
sudo make install