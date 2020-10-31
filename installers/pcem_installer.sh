#/bin/bash
#PCem 1.5: https://malagaoriginal.blogspot.com/2018/11/pcem-emulador-de-pcs-antiguos-para.html
sudo apt install -y build-essential libsdl1.2-dev libopenal-dev libwxbase3.0-dev libwxgtk3.0-gtk3-dev automake glibc-source wget
mkdir pcem15
cd pcem15/
wget -c https://pcem-emulator.co.uk/files/PCemV15Linux.tar.gz
tar -zxvf PCemV15Linux.tar.gz 
rm PCemV15Linux.tar.gz 
./configure
make
sudo make install
cd ..
../commonscripts/createshortcuts.sh pcem
