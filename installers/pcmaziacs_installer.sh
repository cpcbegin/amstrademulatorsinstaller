#/bin/bash
../commonscripts/createshortcuts.sh pcmaziacs
source ../commonscripts/makeopenchangetodir.sh /opt/linuxgames
sudo apt -y install wget make build-essential libsdl1.2-dev  libsdl-image1.2-dev libsdl-mixer1.2-dev
wget -c http://www.sromero.org/ext/spectrum/pcmaziacs/pcmaziacs-0.8.7.tar.gz -O pcmaziacs.tar.gz
tar zxvf pcmaziacs.tar.gz
mv pcmaziacs-0.8.7 pcmaziacs
cd pcmaziacs
./configure
make