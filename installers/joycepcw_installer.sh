#/bin/bash
#Joyce/Anne: https://malagaoriginal.blogspot.com/2011/04/emulacion-amstrad-pcw-en-gnulinux.html
sudo apt install -y build-essential libxml2-dev wget
wget -c http://www.seasip.info/Unix/Joyce/joyce-2.2.13.tar.gz
tar zxvf joyce-2.2.13.tar.gz 
cd joyce-2.2.13/
./configure 
make
sudo make install
cd ..
../commonscripts/createshortcuts.sh xjoyce
../commonscripts/createshortcuts.sh xanne