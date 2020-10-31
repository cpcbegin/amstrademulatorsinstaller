#/bin/bash
echo ">>> Installing Minetest with Mineclone..."
sudo apt -y install minetest git
mkdir -p $HOME/.minetest/games
cd $HOME/.minetest/games
git clone git clone http://repo.or.cz/MineClone/MineClone2.git
echo "fullscreen = true" >> $HOME/.minetest/minetest.conf