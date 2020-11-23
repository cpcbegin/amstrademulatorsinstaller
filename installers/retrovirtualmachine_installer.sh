#/bin/bash
sudo apt -y install wget
if [ `uname -m` == "x86_64" ]; then
    ../commonscripts/createshortcuts.sh rvm
    echo "Instaling RVM for 64 bits..."
    wget -c https://retrovirtualmachine.ams3.digitaloceanspaces.com/release/beta1/linux/x64/RetroVirtualMachine.2.0.beta-1.r7.linux.x64.deb
    sudo dpkg -i RetroVirtualMachine.2.0.beta-1.r7.linux.x64.deb
    rm -f RetroVirtualMachine.2.0.beta-1.r7.linux.x64.deb
elif [ `uname -m` == "i686" ]; then
    ../commonscripts/createshortcuts.sh rvm
    echo "Instaling RVM for 32 bits.."
    wget -c https://retrovirtualmachine.ams3.digitaloceanspaces.com/release/beta1/linux/x86/RetroVirtualMachine.2.0.beta-1.r7.linux.x86.deb
    sudo dpkg -i RetroVirtualMachine.2.0.beta-1.r7.linux.x86.deb
    rm -f RetroVirtualMachine.2.0.beta-1.r7.linux.x86.deb
else
    echo "ERROR: RVM doen't support this architecture by the moment."
fi
