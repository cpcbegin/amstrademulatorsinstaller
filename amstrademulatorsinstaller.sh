#/bin/bash
mkdir opt
cd opt
#Zesarux: https://malagaoriginal.blogspot.com/2019/07/instalar-zesarux-desde-github-potente.html
sudo apt install git build-essential libsdl1.2-dev libncurses5-dev libaal-dev libcaca-dev
git clone https://github.com/chernandezba/zesarux
cd zesarux/src
./configure
make
sudo make install
cd ../..
#Caprice32: https://malagaoriginal.blogspot.com/2019/01/compilar-el-nuevo-caprice32-con-soporte.html
sudo apt install git build-essential libsdl1.2-dev libfreetype6-dev libpng-dev zlib1g-dev
git clone https://github.com/ColinPitrat/caprice32
cd caprice32
make
sudo make install
cd ..
#RetroVirtualMachine
wget https://retrovirtualmachine.ams3.digitaloceanspaces.com/release/beta1/linux/x64/RetroVirtualMachine.2.0.beta-1.r7.linux.x64.deb
sudo dpkg -i RetroVirtualMachine.2.0.beta-1.r7.linux.x64.deb 
#Joyce/Anne: https://malagaoriginal.blogspot.com/2011/04/emulacion-amstrad-pcw-en-gnulinux.html
sudo apt install build-essential libxml2-dev
wget -c http://www.seasip.info/Unix/Joyce/joyce-2.2.13.tar.gz
tar zxvf joyce-2.2.13.tar.gz 
cd joyce-2.2.13/
./configure 
make
sudo make install
xjoyce 
cd ..
#CPCTelera: https://malagaoriginal.blogspot.com/2016/01/instalar-cpctelera-en-ubuntu.html
sudo apt install git build-essential bison flex libboost1.71-dev libfreeimage-dev mono-runtime
sudo apt install wget unzip wine
git clone https://github.com/lronaldo/cpctelera
cd cpctelera/
./setup.sh 
cd ..
# CPCTools: https://malagaoriginal.blogspot.com/2016/12/convierte-tu-raspberry-pi-en-un.html
sudo apt-get install texinfo build-essential automake
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
#PCem 1.5: https://malagaoriginal.blogspot.com/2018/11/pcem-emulador-de-pcs-antiguos-para.html
sudo apt install git build-essential libsdl1.2-dev libopenal-dev libwxbase3.0-dev libwxgtk3.0-gtk3-dev automake glibc-source
mkdir pcem15
cd pcem15/
wget https://pcem-emulator.co.uk/files/PCemV15Linux.tar.gz
tar -zxvf PCemV15Linux.tar.gz 
rm PCemV15Linux.tar.gz 
./configure
make
sudo make install
cd ..
#Arnold rofl0r Emulator
sudo apt install git build-essential libgtk2.0-dev libsdl1.2-dev libx11-dev
git clone https://github.com/rofl0r/arnold
cd arnold/src
./autogen.sh
./configure
make
