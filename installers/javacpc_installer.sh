#/bin/bash
sudo apt -y install wget unzip openjdk-11-jre
../commonscripts/createshortcuts.sh javacpc
source ../commonscripts/makeopenchangetodir.sh /opt/javaemus/javacpc
wget -c https://downloads.sourceforge.net/project/javacpc/JavaCPC%20Desktop/JavaCPC_Desktop_2.9.8f.zip -O javacpc.zip
unzip -u javacpc.zip
rm -f javacpc.zip