#/bin/bash
echo ">>> Installing The Legend of Zelda, mystery of Solarus..."
sudo apt install -y opentyrian
wget -c http://www.camanis.net/tyrian/tyrian21.zip
sudo mkdir -p /usr/share/opentyrian/data
sudo unzip -j tyrian21.zip -d /usr/share/opentyrian/data