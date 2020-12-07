#/bin/bash
if [ -n "$1" ]; then
    sudo mkdir -p "$1"
    sudo chmod 777 "$1"
    cd "$1"
else
    echo "ERROR: Which DIR?"
fi