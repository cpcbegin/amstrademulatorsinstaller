#/bin/bash
sudo apt -y install wget unrar openjdk-11-jre
../commonscripts/createshortcuts.sh zxpoly
source ../commonscripts/makeopenchangetodir.sh /opt/javaemus
wget -c https://github.com/raydac/zxpoly/releases/download/2.1.1/zxpoly-emul-2.1.1-linux-x64-withjdk.tar.gz -O zxpoly.tar.gz
tar zxvf zxpoly.tar.gz
mv -f zxpoly-emul-2.1.1 zxpoly
rm -f zxpoly.tar.gz