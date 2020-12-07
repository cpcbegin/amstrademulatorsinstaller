#/bin/bash
../commonscripts/createshortcuts.sh smkclone
source ../commonscripts/makeopenchangetodir.sh /opt/linuxgames
sudo apt install -y git build-essential make libsfml-dev python3
git clone https://github.com/vmbatlle/super-mario-kart smkclone
cd smkclone/src
make -j8 release
