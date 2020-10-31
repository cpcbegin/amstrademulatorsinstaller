#/bin/bash
echo ">>> Installing RVGL Revolt remake..."
source ../commonscripts/makeopenchangetodir.sh /opt/linuxgames/rvgl
sudo apt -y python3
wget -c https://rvgl.re-volt.io/downloads/install_rvgl.py
python3 ./install_rvgl.py install
../commonscripts/createshortcuts.sh rvgl