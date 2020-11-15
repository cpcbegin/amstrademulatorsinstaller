#/bin/bash
../installers/wine_installer.sh
../commonscripts/createshortcuts.sh winape
source ../commonscripts/makeopenchangetodir.sh /opt/winemus/winape
sudo apt -y install wget
#wget -c http://www.winape.net/download/WinAPE20B2.zip -O winape.zip
#unzip -xu winape.zip
#rm -f winape.zip