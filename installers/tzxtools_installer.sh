#/bin/bash
sudo apt -y install git python3-png
git clone https://github.com/shred/tzxtools
cd tzxtools
python3 ./setup.py build
sudo python3 ./setup.py install