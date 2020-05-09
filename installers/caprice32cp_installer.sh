#/bin/bash
#Caprice32: https://malagaoriginal.blogspot.com/2019/01/compilar-el-nuevo-caprice32-con-soporte.html
sudo apt install git build-essential libsdl1.2-dev libfreetype6-dev libpng-dev zlib1g-dev
git clone https://github.com/ColinPitrat/caprice32 caprice32cp
cd caprice32cp
git pull
make
sudo make install
cd ..
../commonscripts/createshortcuts.sh caprice32cp