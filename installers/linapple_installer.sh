#/bin/bash
../commonscripts/createshortcuts.sh linapple
sudo apt -y install zlib1g-dev libcurl4 libzip-dev libsdl1.2-dev libsdl-image1.2-dev libcurl4-gnutls-dev imagemagick libsdl2-image-dev libcurl4-gnutls-dev libzip-dev
git clone https://github.com/linappleii/linapple
cd linapple
make
sudo make install