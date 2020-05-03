#/bin/bash
Titulo="Select an Amstrad emulator or tool"
Pregunta="Which software are you going to install?"
emulators_installers_path="./installers/"
#emulators=`ls $emulators_installers_path*.sh`
#echo $emulators_installers_path
cd $emulators_installers_path
choice=$(ls *.sh | zenity --list --title "$Titulo" --text "$Pregunta" --column="Archivos")
cd ..
mkdir opt
cd opt
$(echo "../installers/$choice")
cd ..