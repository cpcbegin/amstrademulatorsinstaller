#/bin/bash
#CPCEC Emulator
sudo apt install -y build-essential libsdl1.2-dev gcc wget
mkdir cpcec
cd cpcec
wget -c http://cngsoft.no-ip.org/cpcec-20200505.zip
unzip -xu cpcec-20200505.zip
rm cpcec-20200505.zip
echo "** Compiling cpcec, please wait... **"
gcc -O2 -xc cpcec.c -DSDL_MAIN_HANDLED -lSDL2 -ocpcec.sh
echo "** Compiling zxsec, please wait... ***"
gcc -O2 -xc zxsec.c -DSDL_MAIN_HANDLED -lSDL2 -ozxsec.sh
chmod +x *.sh
cd ..
../commonscripts/createshortcuts.sh cpcec /opt/linuxemus
../commonscripts/createshortcuts.sh zxsec