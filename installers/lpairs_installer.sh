#/bin/bash
sudo apt -y install build-essential libsdl2-ttf-dev libsdl2-image-dev libsdl2-mixer-dev
wget -c https://downloads.sourceforge.net/project/lgames/lpairs/lpairs2-2.1.tar.gz -O lpairs.tar.gz
tar -xvf lpairs.tar.gz
mv lpairs2-2.1 lpairs
cd lpairs
./configure
sudo make install
cd ..
rm -f lpairs.tar.gz