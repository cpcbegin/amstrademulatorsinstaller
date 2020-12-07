#/bin/bash
#QB64
sudo apt install -y git build-essential g++ libglu1-mesa-dev
sudo mkdir -p /opt/linuxutils
sudo chmod 777 /opt/linuxutils
cd /opt/linuxutils
git clone https://github.com/QB64Team/qb64
cd qb64
git pull
./setup_lnx.sh
cd ..
../commonscripts/createshortcuts.sh qb64