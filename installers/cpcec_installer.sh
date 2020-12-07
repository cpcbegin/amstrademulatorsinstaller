#/bin/bash
#CPCEC Emulator
source ../commonscripts/makeopenchangetodir.sh /opt/linuxemus
sudo apt install -y build-essential libsdl1.2-dev gcc wget
mkdir cpcec
cd cpcec
wget -c http://cngsoft.no-ip.org/cpcec-20201028.zip
unzip -xuL cpcec-20201028.zip
rm cpcec-20201028.zip
echo "** Compiling cpcec, please wait... **"
gcc -DSDL2 -O2 -xc cpcec.c -lSDL2 -ocpcec.sh
echo "** Compiling zxsec, please wait... ***"
gcc -DSDL2 -O2 -xc zxsec.c -lSDL2 -ozxsec.sh
chmod +x *.sh
cd ..
../commonscripts/createshortcuts.sh cpcec
../commonscripts/createshortcuts.sh zxsec