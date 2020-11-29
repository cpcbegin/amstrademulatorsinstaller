#/bin/bash
sudo apt -y install build-essential make git
git clone https://github.com/mtfuji/tap2wav tapx1g2wav
cd tapx1g2wav
make
sudo chmod +x tap2wav
sudo cp tap2wav /usr/local/bin/tapx1g2wav