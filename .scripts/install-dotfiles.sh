#!/bin/bash

echo "Downloading dotfiles..."
cd $HOME/Downloads
git clone https://github.com/sanicsquirtle420/dotfiles.git

if [! -d $HOME/.scripts] ; then
	mkdir $HOME/.scripts
fi

if [! -d $HOME/.themes] ; then
	mkdir $HOME/.themes
fi

echo "Installing themes..."
cp -r dotfiles/.config/cava/* $HOME/.config/cava/
cp -r dotfiles/.config/dunst/* $HOME/.config/dunst/
cp -r dotfiles/.config/git/* $HOME/.config/git/
cp -r dotfiles/.config/i3/* $HOME/.config/i3/
cp -r dotfiles/.config/kitty/* $HOME/.config/kitty/
cp -r dotfiles/.config/neofetch/* $HOME/.config/neofetch/
cp -r dotfiles/.config/nvim/* $HOME/.config/nvim/
cp -r dotfiles/.config/picom/* $HOME/.config/picom/
cp -r dotfiles/.config/polybar/* $HOME/.config/polybar/
cp -r dotfiles/.config/rofi/* $HOME/.config/rofi/
cp -r dotfiles/themes $HOME/.themes
cp -r dotfiles/.scripts* $HOME/.scripts

echo "Making executable files..."
chmod +x $HOME/.scripts/*
chmod +x $HOME/.config/polybar/scripts/*
chmod +x $HOME/.config/polybar/launch.sh

echo "Downloading zscroll"
git clone https://github.com/noctuid/zscroll.git
cd zscroll
sudo python3 setup.py install
cd $HOME/Downloads
echo "zscroll installed!"

echo "Downloading pulseaudio-control"
git clone https://github.com/marioortizmanero/polybar-pulseaudio-control.git
sudo mv $HOME/Downloads/polybar-pulseaudio-control/pulseaudio-control /usr/local/bin/
sudo chmod +x /usr/local/bin/pulseaudio-control
cd $HOME/Downloads
echo "pulseaudio-control installed!"

THEME="aqua"
$HOME/.scripts/change-to-$THEME.sh
echo "dotfiles installed!"
