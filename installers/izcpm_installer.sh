#/bin/bash
#CP/M emulator
wget -c https://github.com/ivanizag/iz-cpm/releases/download/v1.0/iz-cpm-for-linux-1.0.zip
unzip -xu iz-cpm-for-linux-1.0.zip
sudo mv iz-cpm-for-linux-1.0/iz-cpm /usr/local/bin
rm -f izcpm.zip