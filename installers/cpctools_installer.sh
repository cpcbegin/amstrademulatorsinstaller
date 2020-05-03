#/bin/bash
# CPCTools: https://malagaoriginal.blogspot.com/2016/12/convierte-tu-raspberry-pi-en-un.html
sudo apt-get install texinfo build-essential automake
git clone https://github.com/ralferoo/cpctools
cd cpctools/
git pull
sudo cp 2cdt/2cdt/2cdt /usr/local/bin/
cd iDSK.0.13
./configure
make
sudo make install
cd ../playtzx-0.12b/
./configure
make
sudo make install
cd ../..
