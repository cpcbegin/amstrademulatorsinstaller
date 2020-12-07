#/bin/bash
source ../commonscripts/tenteinit.sh
echo ">>> Installing LD4DStudio..."
wget -c http://www.ld4dstudio.nl/action/download/LD4DStudio-1-2.rar -O $LDRAWTMP/ld4dstudio.rar
mkdir -p $LDRAWHOME/software/ld4dstudio
echo "unrar x -u $LDRAWTMP/ld4dstudio.rar $LDRAWHOME/software/ld4dstudio"
unrar x -u $LDRAWTMP/ld4dstudio.rar $LDRAWHOME/software/ld4dstudio
rm $LDRAWTMP/LD4DStudio.rar
../commonscripts/createshortcuts.sh ld4dstudio