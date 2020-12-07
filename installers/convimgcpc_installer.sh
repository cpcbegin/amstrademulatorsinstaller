#/bin/bash
../commonscripts/createshortcuts.sh convimgcpc
source ../commonscripts/makeopenchangetodir.sh /opt/winemus/convimgcpc
sudo apt -y install wget wine winetricks
winetricks mfc42
wget -c https://www.amstrad.es/v5.4/downloads/convimgcpc.zip -O convimgcpc.zip
unzip -xu convimgcpc.zip
rm -f convimgcpc.zip