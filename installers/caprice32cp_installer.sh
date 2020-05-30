#/bin/bash
#Caprice32
sudo apt install -y git build-essential libsdl1.2-dev libfreetype6-dev libpng-dev zlib1g-dev
git clone https://github.com/ColinPitrat/caprice32 caprice32cp
cd caprice32cp
git pull
make
#sudo make install
cd ..
../commonscripts/createshortcuts.sh caprice32cp /opt/linuxemus