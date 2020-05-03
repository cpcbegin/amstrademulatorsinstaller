#/bin/bash
#Zesarux: https://malagaoriginal.blogspot.com/2019/07/instalar-zesarux-desde-github-potente.html
sudo apt install git build-essential libsdl1.2-dev libncurses5-dev libaal-dev libcaca-dev
git clone https://github.com/chernandezba/zesarux
cd zesarux
git pull
cd src
./configure
make
sudo make install
cd ../..