#/bin/bash
source ../commonscripts/tenteinit.sh
echo ">>> Installing Blender..."
sudo apt install -y blender wget
echo ">>> Installing Import LDraw addon for Blender..."
wget -c https://github.com/TobyLobster/ImportLDraw/releases/download/1.1.11/importldraw1.1.11_for_blender_281.zip
mkdir -p $LDRAWHOME/software/blender/
mv importldraw1.1.11_for_blender_281.zip $LDRAWHOME/software/blender/