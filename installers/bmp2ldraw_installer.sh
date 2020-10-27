#/bin/bash
source ../commonscripts/tenteinit.sh
echo ">>> Installing BMP2LDraw..."
wget -c https://www.dropbox.com/s/a82giwfiof15ld5/bmp2ldraw.zip?dl=1 -O $LDRAWTMP/bmp2ldraw.zip
unzip -u $LDRAWTMP/bmp2ldraw.zip -d $LDRAWHOME/software/
rm $LDRAWTMP/bmp2ldraw.zip
../commonscripts/createshortcuts.sh bmp2ldraw