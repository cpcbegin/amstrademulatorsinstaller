#/bin/bash
../commonscripts/createshortcuts.sh pixelpol
sudo apt -y install wget unrar openjdk-11-jre
wget -c https://csdb.dk/getinternalfile.php/206465/ppolizei.zip
unzip -ux ppolizei.zip
mkdir -p /opt/javaemus
if [ `uname -m` == "x86_64" ]; then
    cp -rp ppolizei_release/linux64 /opt/javaemus/pixelpol
elif [ `uname -m` == "i686" ]; then
    cp -rp ppolizei_release/linux32 /opt/javaemus/pixelpol
else
    cp -rp ppolizei_release/linux32 /opt/javaemus/pixelpol
fi
