#/bin/bash
if [ "$1" == "" ]; then
    title="Main Menu"
    filename="./menus/main.txt"
else
    title="$1"
    filename="./menus/$1.txt"
fi
backtitle="Retro-multi-installer"
height=$(wc -l "$filename"|cut -d" " -f1)
height=$((9+$height))
width=$(wc -L "$filename"|cut -d" " -f1)
width=$((9+$width))
opciones=$(cat "$filename")
dialog --backtitle $backtitle --menu "$title" $height $width $height $opciones  2>&1 >/dev/tty