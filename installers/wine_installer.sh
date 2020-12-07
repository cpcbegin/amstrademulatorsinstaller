#/bin/bash
if [ `uname -m` == "x86_64" ] | [ `uname -m` == "i686" ]; then
    sudo apt install -y wine
    sudo apt install -y wine-stable
else
    echo "ERROR: Wine is only supported by x86 or x86_64 architectures."
fi