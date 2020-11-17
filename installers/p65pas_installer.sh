#/bin/bash
../commonscripts/createshortcuts.sh p65pas
source ../commonscripts/makeopenchangetodir.sh /opt/linuxemus
sudo apt install -y git
git clone https://github.com/t-edson/P65Pas p65pas
chmod +x /opt/linuxemus/p65pas/P65Pas-linux