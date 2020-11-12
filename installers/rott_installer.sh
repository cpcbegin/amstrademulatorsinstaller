#/bin/bash
echo ">>> Installing Rise of the Triad Open Engine..."
../commonscripts/createshortcuts.sh rott-shareware
sudo apt -y install rott
echo ">>> Installing Rise of the Triad shareware data..."
../commonscripts/makeopenchangetodir.sh /usr/share/games/rott/
#wget -c http://icculus.org/rott/share/1rott13.zip
#sudo unzip -u 1rott13.zip -d /usr/share/games/rott/
sudo wget -c https://github.com/mozzwald/openwrt-zipit-packages/blob/master/rott-shareware/files/huntbgin.wad?raw=true -O /usr/share/games/rott/HUNTBGIN.WAD