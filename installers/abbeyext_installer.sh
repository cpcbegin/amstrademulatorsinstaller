#/bin/bash
sudo apt -y install wget unrar openjdk-11-jre
lang=$(locale | grep LANGUAGE | cut -d= -f2 | cut -d_ -f1)
if [ $lang == "es" ]; then
    gameindex="abadiaext"
    gameurl="http://www.abadiadelcrimenextensum.com/download/430/"
else
    gameindex="abbeyext"
    gameurl="http://www.abadiadelcrimenextensum.com/download/442/"
fi
../commonscripts/createshortcuts.sh $gameindex
source ../commonscripts/makeopenchangetodir.sh /opt/javagames/$gameindex
wget -c $gameurl -O $gameindex.rar
unrar x -u $gameindex.rar
rm -f $gameindex.rar