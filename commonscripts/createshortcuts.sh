#/bin/bash
if [ -n "$1" ]; then
    if [ -n "$2" ]; then
        sudo mkdir -p "$2"
        sudo chmod +rwx "$2"
        cp -rp "$1" "$2/$1" && rm -rf "$1"
    fi
    sudo cp -f "../shotcuts/usr/share/applications/$1.desktop" /usr/share/applications/
    sudo cp -f "../shotcuts/etc/xdg/menus/applications-merged/$1.menu" /etc/xdg/menus/applications-merged/
    sudo cp -f "../shotcuts/usr/share/pixmaps/$1.png" /usr/share/pixmaps/
    if [ -f "/usr/share/desktop-directories/Emulators.directory" ]; then
        echo "WARNING: Emulators category exists!"
    else
        sudo cp -f ../shotcuts/usr/share/desktop-directories/Emulators.directory /usr/share/desktop-directories/Emulators.directory
        sudo cp -f ../shotcuts/usr/share/pixmaps/emulators.png /usr/share/pixmaps/
    fi
else
    echo "ERROR: No parameters found."
fi