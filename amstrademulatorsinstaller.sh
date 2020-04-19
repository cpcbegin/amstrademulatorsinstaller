#/bin/bash
mkdir opt
cd opt
#Zesarux
sudo apt install git libsdl1.2-dev libncurses5-dev libaal-dev libcaca-dev build-essential
git clone https://github.com/chernandezba/zesarux
cd zesarux/src
./configure
make
sudo make install
cd ../..
#Caprice32
sudo apt install git libsdl1.2-dev libncurses5-dev libaal-dev libcaca-dev build-essential libfreetype6-dev libpng-dev zlib1g-dev
git clone https://github.com/ColinPitrat/caprice32
cd caprice32
make
sudo make install
cd ..
#RetroVirtualMachine
wget https://retrovirtualmachine.ams3.digitaloceanspaces.com/release/beta1/linux/x64/RetroVirtualMachine.2.0.beta-1.r7.linux.x64.deb
sudo dpkg -i RetroVirtualMachine.2.0.beta-1.r7.linux.x64.deb 
#Joyce/Anne
sudo apt install git libsdl1.2-dev libncurses5-dev libaal-dev libcaca-dev build-essential libfreetype6-dev libpng-dev zlib1g-dev libxml2-dev
wget -c http://www.seasip.info/Unix/Joyce/joyce-2.2.13.tar.gz
tar zxvf joyce-2.2.13.tar.gz 
cd joyce-2.2.13/
./configure 
make
sudo make install
xjoyce 
cd ..
#CPCTelera
git clone https://github.com/lronaldo/cpctelera
sudo apt install git libsdl1.2-dev libncurses5-dev libaal-dev libcaca-dev build-essential libfreetype6-dev libpng-dev zlib1g-dev libxml2-dev bison flex libboost1.71-dev libfreeimage-dev wget unzip wine jedit mc
sudo apt install git libsdl1.2-dev libncurses5-dev libaal-dev libcaca-dev build-essential libfreetype6-dev libpng-dev zlib1g-dev libxml2-dev bison flex libboost1.71-dev libfreeimage-dev wget unzip wine jedit mc mono-runtime
cd cpctelera/
./setup.sh 
cd ..
# CPCTools
git clone https://github.com/ralferoo/cpctools
sudo cp cpctools/2cdt/2cdt/2cdt /usr/local/bin/
cd cpctools/iDSK.0.13/
./configure
make
sudo make install
cd ../playtzx-0.12b/
./configure
make
sudo make install
cd ../..
#PCem 1.5
sudo apt install git libsdl1.2-dev libncurses5-dev libaal-dev libcaca-dev build-essential libfreetype6-dev libpng-dev zlib1g-dev libxml2-dev bison flex libboost1.71-dev libfreeimage-dev wget unzip wine jedit mc mono-runtime libopenal-dev libwxbase3.0-dev libwxgtk3.0-dev automake glibc-source
sudo apt install git libsdl1.2-dev libncurses5-dev libaal-dev libcaca-dev build-essential libfreetype6-dev libpng-dev zlib1g-dev libxml2-dev bison flex libboost1.71-dev libfreeimage-dev wget unzip wine jedit mc mono-runtime libopenal-dev libwxbase3.0-dev libwxgtk3.0-gtk3-dev automake glibc-source
mkdir pcem15
cd pcem15/
wget https://pcem-emulator.co.uk/files/PCemV15Linux.tar.gz
tar -zxvf PCemV15Linux.tar.gz 
rm PCemV15Linux.tar.gz 
./configure
make
sudo make install
