#/bin/bash
sudo apt -y install zlib1g-dev libcurl4 libzip-dev libsdl1.2-dev libsdl-image1.2-dev libcurl4-gnutls-dev imagemagicklibsdl2-image-dev 
git clone https://github.com/linappleii/linapple
cd linapple
make
sudo make install
../commonscripts/createshortcuts.sh linapple