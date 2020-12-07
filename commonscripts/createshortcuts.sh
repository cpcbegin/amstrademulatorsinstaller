#/bin/bash
if [ -n "$1" ]; then
    if [ -n "$2" ]; then
        sudo mkdir -p "$2"
        sudo chmod a+rwx "$2"
        sudo mkdir -p "$2/$1"
        sudo chmod a+rwx "$2/$1"
        cp -rpfu "$1/*" "$2/$1/." && rm -rf "$1"
    fi
    sudo cp -f "../shotcuts/usr/share/applications/$1.desktop" /usr/share/applications/
    sudo mkdir -p /etc/xdg/menus/applications-merged
    sudo cp -f "../shotcuts/etc/xdg/menus/applications-merged/$1.menu" /etc/xdg/menus/applications-merged/
    sudo cp -f "../shotcuts/usr/share/pixmaps/$1.png" /usr/share/pixmaps/
    for category in emulators tente3d; do
        if [ -f "/usr/share/desktop-directories/$category.directory" ]; then
            echo "WARNING: $category category exists!"
        else
            sudo cp -f ../shotcuts/usr/share/desktop-directories/$category.directory /usr/share/desktop-directories/$category.directory
            sudo cp -f ../shotcuts/usr/share/pixmaps/$category.png /usr/share/pixmaps/
        fi
    done
else
    echo "ERROR: No parameters found."
fi