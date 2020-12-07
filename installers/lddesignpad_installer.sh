#/bin/bash
source ../commonscripts/tenteinit.sh
echo ">>> Installing LDDesignPad..."
wget -c https://sourceforge.net/projects/lddp/files/LDDP%20Windows%20Binaries/LDDP%202.x/LDDP%202.0.4/LDDP204.zip/download -O $LDRAWTMP/lddesignpad.zip
mkdir $LDRAWHOME/software/lddp
unzip -u $LDRAWTMP/lddesignpad.zip -d $LDRAWHOME/software/lddp
rm $LDRAWTMP/lddesignpad.zip
../commonscripts/createshortcuts.sh lddesignpad