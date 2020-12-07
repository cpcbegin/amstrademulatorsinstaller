#/bin/bash
source ../commonscripts/tenteinit.sh
echo ">>> Installing MLCad 3.40..."
wget -c http://mlcad.lm-software.com/MLCad_V3.40.zip -O $LDRAWTMP/mlcad.zip
unzip -u $LDRAWTMP/mlcad.zip -d $LDRAWHOME/software/
rm $LDRAWTMP/mlcad.zip
mkdir -p $LDRAWHOME/software/regs
cp -rp ../shotcuts/$LDRAWHOME/software/regs/mlcad*.reg $LDRAWHOME/software/regs
mkdir -p $LDRAWHOME/software/linuxscripts
cp -rp ../shotcuts$LDRAWHOME/software/linuxscripts/mlcad*.sh $LDRAWHOME/software/linuxscripts
../commonscripts/createshortcuts.sh mlcadtente
../commonscripts/createshortcuts.sh mlcadlego
../commonscripts/createshortcuts.sh mlcadexincastillos