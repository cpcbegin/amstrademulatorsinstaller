#/bin/bash
source ../commonscripts/tenteinit.sh
echo "Installing LDView..."
wget -c http://download.opensuse.org/repositories/home:/pbartfai/xUbuntu_19.04/amd64/ldview_4.3_amd64.deb -O $LDRAWTMP/ldview.deb
sudo dpkg -i $LDRAWTMP/ldview.deb
sudo apt install -fy
rm $LDRAWTMP/ldview.deb
mkdir -p $LDRAWHOME/software/linuxscripts
cp -rp ../shotcuts$LDRAWHOME/software/linuxscripts/ldview*.sh $LDRAWHOME/software/linuxscripts
../commonscripts/createshortcuts.sh ldviewtente
../commonscripts/createshortcuts.sh ldviewlego
../commonscripts/createshortcuts.sh ldviewexincastillos