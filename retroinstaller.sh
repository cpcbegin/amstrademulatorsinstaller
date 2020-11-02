#/bin/bash
function is_missing_dialog_pkg() {
    if [ ! -f /usr/bin/dialog ]; then
        while true; do
            read -p "Missing 'dialog' package. Do you wish to let me try to install it for you? (aprox. 1.3 kB) [y/n] " yn
            case $yn in
            [Yy]*)
                sudo apt install -y dialog
                break
                ;;
            [Nn]*)
                echo "Please install 'dialog' package to continue."
                exit 1
                ;;
            *) echo "Please answer (y)es or (n)o." ;;
            esac
        done
    fi
}

is_missing_dialog_pkg
while true; do
    seleccion=$(./commonscripts/menugen.sh $1  | tr '[:upper:]' '[:lower:]')
    if [ $seleccion == "exit" ] || [ -z "$seleccion" ]; then
        break
    fi
    if  [ -f "./menus/${seleccion}.txt" ]; then
        ./retroinstaller.sh $seleccion
    else
        mkdir opt
        clear
        echo ">>> Installing ${seleccion}..."
        cd opt
        ../installers/${seleccion}_installer.sh
        cd ..
    fi
done