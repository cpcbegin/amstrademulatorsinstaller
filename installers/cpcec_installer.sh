#/bin/bash
#CPCED Emulator
sudo apt install build-essential libsdl1.2-dev gcc
mkdir cpcec
cd cpcec
wget -c http://cngsoft.no-ip.org/cpcec-20200430.zip
unzip -x cpcec-20200430.zip
rm cpcec-20200430.zip
echo "** Compiling cpcec, please wait... **"
gcc -O2 -xc cpcec.c -DSDL_MAIN_HANDLED -lSDL2 -ocpcec.elf
echo "** Compiling zxsec, please wait... ***"
gcc -O2 -xc zxsec.c -DSDL_MAIN_HANDLED -lSDL2 -ozxsec.elf
chmod +x *.sh
cd ..
sudo mkdir -p /opt/linuxemus
sudo chmod +rwx /opt/linuxemus
mv -p cpcec /opt/linuxemus/
