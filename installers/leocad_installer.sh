#/bin/bash
../commonscripts/createshortcuts.sh leocadtente
../commonscripts/createshortcuts.sh leocadlego
../commonscripts/createshortcuts.sh leocadexincastillos
source ../commonscripts/tenteinit.sh
sudo apt -y install git libqt4-dev zlib1g-dev
git clone https://github.com/leozide/leocad/
cd leocad
qmake leocad.pro
make
sudo make install
