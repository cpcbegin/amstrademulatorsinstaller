#/bin/bash
LDRAWHOME="/opt/ldraw"
LDRAWTMP="/tmp/ldraw"
APPSMERGED=$HOME/.config/menus/applications-merged
DESKTOPDIR=$HOME/.local/share/desktop-directories
DESKTOPPATH=$(xdg-user-dir DESKTOP)
DESKTOPPATHTENTE=$DESKTOPPATH/Tente_Lego
FIRSTSUDOUSER=$(grep sudo /etc/group | head -1 | cut -d ":" -f4)

sudo mkdir -p $LDRAWHOME
sudo chown $FIRSTSUDOUSER $LDRAWHOME
mkdir -p $LDRAWTMP
echo $LDRAWTMP
../installers/wine_installer.sh
../installers/compress_installer.sh
sudo apt install -y git wget

echo ">>> Creating all folders we need"
for f in $LDRAWHOME $LDRAWHOME/tente $LDRAWTMP $APPSMERGED $DESKTOPDIR; do
    if [ -d $f ]; then
        echo "$f ya existe."
    else
        mkdir -p $f
        #sudo chown -R $FIRSTSUDOUSER f
        echo "Creado $f"
    fi
done

#modelos
if [ ! -d "$LDRAWHOME/models" ]; then
    echo ">>> Installing example 3D models"
    git clone https://github.com/cpcbegin/tentemodels $LDRAWHOME/models
fi
#TENTE
#if [ ! -d "$LDRAWHOME/tente/parts" ]; then
#    echo ">>> Installing TENTE 3D pieces"
#    wget -c https://www.dropbox.com/s/9ylx1tparps72ta/LDrawTente_Ultima.zip?dl=1 -O $LDRAWTMP/LDrawTente_Ultima.zip
#    unzip -xu $LDRAWTMP/LDrawTente_Ultima.zip -d $LDRAWHOME/tente
#    rm $LDRAWTMP/LDrawTente_Ultima.zip
#    echo "Renombramos LDCONFIG.LDR por LDConfig.ldr (compatibilidad con software nativo GNU/Linux)"
#    mv $LDRAWHOME/tente/LDCONFIG.LDR $LDRAWHOME/tente/LDConfig.ldr
#fi
#LEGO
if [ ! -d "/usr/share/ldraw" ]; then
    echo ">>> Installing LEGO 3D pieces"
    wget -c http://www.ldraw.org/library/updates/complete.zip
    unzip -xu complete.zip -d $LDRAWHOME
    mv $LDRAWHOME/ldraw $LDRAWHOME/lego
    rm -f complete.zip
fi
#@TO-DO EXIN CASTILLOS