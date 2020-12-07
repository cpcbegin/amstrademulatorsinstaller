#/bin/bash
filename="../warning/$1.txt"
if [ -f $filename ]; then
    texto=$(cat $filename)
    height=$(wc -l "$filename"|cut -d" " -f1)
    height=$((6+$height))
    width=$(wc -L "$filename"|cut -d" " -f1)
    width=$((6+$width))
else
    texto="'$1' installed."
    height=5
    width=${#texto}
    width=$((7+$width))
fi
dialog --msgbox "$texto" $height $width