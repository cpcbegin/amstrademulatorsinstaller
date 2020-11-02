#/bin/bash
echo ">>> Installing Abu Simbel Profanation DeLuxe..."
source ../commonscripts/makeopenchangetodir.sh /opt/linuxgames
wget -c "https://computeremuzone.com/cont.php?f_ad=Abusimbel(deluxe)_linux.zip&f=598&sis=lnx" -O profanation.zip
unzip -xu profanation.zip
mv ProfaDeluxe-Linux profanation
chmod +x ./profanation/profanation
../commonscripts/createshortcuts.sh profanation
rm -f profanation.zip
