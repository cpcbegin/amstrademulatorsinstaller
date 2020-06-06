#/bin/bash
#OpenMSX
sudo apt install -y openmsx wget unzip 
#@TO-DO openmsx-catapult
wget -c  http://bluemsx.msxblue.com/rel_download/blueMSXv282full.zip
unzip -u blueMSXv282full.zip Machines/*
sudo mv Machines/* /usr/share/openmsx/systemroms
#../commonscripts/createshortcuts.sh openMSX-Catapult
../commonscripts/createshortcuts.sh openmsx