#/bin/bash
sudo apt -y install unzip wget termcap* build-essential
wget -c http://cpctech.cpc-live.com/download/cpcxfs.zip
unzip -xu cpcxfs.zip
cd cpcxfs
cd src
make -f makefile.lnx clean
make -f makefile.lnx
sudo mv cpcxfs /usr/local/bin/