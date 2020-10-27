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
echo ">>> Installing wine"
sudo apt install -y wine
sudo apt install -y wine-stable
echo ">>> Installing git and uncompress software"
sudo apt install -y git unrar unzip

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
if [ ! -d "$LDRAWHOME/tente/parts" ]; then
    echo ">>> Installing TENTE 3D pieces"
    wget -c https://www.dropbox.com/s/irba95qphdxtiq7/LDrawTente_Ultima.zip?dl=0 -O $LDRAWTMP/LDrawTente_Ultima.zip
    unzip -u $LDRAWTMP/LDrawTente_Ultima.zip -d $LDRAWHOME/tente
    rm $LDRAWTMP/LDrawTente_Ultima.zip
    echo "Renombramos LDCONFIG.LDR por LDConfig.ldr (compatibilidad con software nativo GNU/Linux)"
    mv $LDRAWHOME/tente/LDCONFIG.LDR $LDRAWHOME/tente/LDConfig.ldr
fi
#LEGO
if [ ! -d "/usr/share/ldraw" ]; then
    echo ">>> Installing LEGO 3D pieces"
    wget -c http://download.opensuse.org/repositories/home:/pbartfai/xUbuntu_20.04/amd64/ldraw_2020.02_amd64.deb -O $LDRAWTMP/ldraw.deb
    sudo dpkg -i $LDRAWTMP/ldraw.deb
    ln -s /usr/share/ldraw $LDRAWHOME/lego
fi
#@TO-DO EXIN CASTILLOS