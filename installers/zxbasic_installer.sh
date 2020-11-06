#/bin/bash
source ../commonscripts/makeopenchangetodir.sh /opt/linuxemus
sudo apt -y install python3 git
git clone https://github.com/boriel/zxbasic
sudo python3 setup.py install
