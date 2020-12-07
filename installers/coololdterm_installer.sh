#/bin/bash
sudo apt-get -y install build-essential qmlscene qt5-qmake qt5-default qtdeclarative5-dev qtdeclarative5-controls-plugin qtdeclarative5-qtquick2-plugin libqt5qml-graphicaleffects qtdeclarative5-dialogs-plugin qtdeclarative5-localstorage-plugin qtdeclarative5-window-plugin git
git clone https://github.com/Swordifish90/cool-old-term
cd cool-old-term
cd konsole-qml-plugin
qmake
make
sudo make install