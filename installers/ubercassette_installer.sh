#/bin/bash
sudo apt -y install build-essential libc6-dev git
#sudo apt -y install libc6-dev-i386
git clone https://github.com/DusteDdk/ubercassette
cd ubercassette
cd src
make
sudo chmod +x ubercassette
sudo cp ubercassette /usr/local/bin