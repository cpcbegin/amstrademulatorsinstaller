#/bin/bash
sudo apt -y install wget unzip
wget -c https://github.com/jeromelesaux/martine/releases/download/v0.26/martine-0.26.0-linux.zip -O martine.zip
unzip -xu martine.zip
sudo chmod +x martine
sudo mv martine /usr/local/bin
