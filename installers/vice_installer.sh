#/bin/bash
#VICE Commodore Emulator
sudo apt install -y xa65 p7zip build-essential byacc texi2html flex libreadline-dev libxaw7-dev texinfo libxaw7-dev libgtk2.0-cil-dev libgtkglext1-dev libpulse-dev wget
wget -c https://downloads.sourceforge.net/project/vice-emu/releases/binaries/windows/GTK3VICE-3.4-win64.7z
sudo chmod +rx /usr/share/lib/
sudo 7zr x -o/usr/share/lib GTK3VICE-3.4-win64.7z GTK3VICE-3.4-win64-r37296
sudo mv /usr/share/lib/GTK3VICE-3.4-win64-r37296 /usr/share/lib/vice
wget -c https://downloads.sourceforge.net/project/vice-emu/releases/vice-3.4.tar.gz
tar -zxvf vice-3.4.tar.gz
cd vice-3.4
./configure --with-x --without-pulse --with-sdlsound --enable-sdlui2
make
sudo make install
cd ..
../commonscripts/createshortcuts.sh x128
../commonscripts/createshortcuts.sh x64sc
../commonscripts/createshortcuts.sh x64dtv
../commonscripts/createshortcuts.sh xcbm2
../commonscripts/createshortcuts.sh xcbm5x0
../commonscripts/createshortcuts.sh xvic
../commonscripts/createshortcuts.sh xplus4
../commonscripts/createshortcuts.sh xpet
