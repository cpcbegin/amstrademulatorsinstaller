#/bin/bash
source ../commonscripts/tenteinit.sh
echo ">>> Installing LDCad..."
wget -c http://www.melkert.net/action/download/LDCad-1-6d-Linux.tar.bz2 -O $LDRAWTMP/ldcad.tar.bz2
tar -xjvf $LDRAWTMP/ldcad.tar.bz2 -C $LDRAWHOME/software
mv $LDRAWHOME/software/LDCad-1-6d-Linux $LDRAWHOME/software/ldcad
rm $LDRAWTMP/ldcad.tar.bz2
../commonscripts/createshortcuts.sh ldcad