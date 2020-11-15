#/bin/bash
../installers/wine_installer.sh
../commonscripts/createshortcuts.sh cpcdiskxp
source ../commonscripts/makeopenchangetodir.sh /opt/winemus/cpcdiskxp
sudo apt -y install wget
wget -c http://www.cpcmania.com/cpcdiskxp/CPCDiskXP%20v2.5.1.zip -O cpcdiskxp.zip
unzip -xu cpcdiskxp.zip
rm -f cpcdiskxp.zip