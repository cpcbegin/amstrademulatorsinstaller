#/bin/bash
#CPCED Emulator
sudo apt install build-essential libsdl1.2-dev 
mkdir cpcec
cd cpcec
wget -c http://cngsoft.no-ip.org/cpcec-20200430.zip
unzip -x cpcec-20200430.zip
rm cpcec-20200430.zip
chmod +x *.elf
cd ..
sudo mkdir -p /opt/linuxemus
sudo chmod +rwx /opt/linuxemus
mv cpcec /opt/linuxemus/