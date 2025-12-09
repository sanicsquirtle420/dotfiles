#!/bin/bash

if [! -d $HOME/.scripts] ; then
	mkdir $HOME/.scripts
fi

if [! -d $HOME/.themes] ; then
	mkdir $HOME/.themes
fi

echo "Creating config directories..."
mkdir -p $HOME/.config
mkdir -p $HOME/.config/cava
mkdir -p $HOME/.config/dunst
mkdir -p $HOME/.config/git
mkdir -p $HOME/.config/i3
mkdir -p $HOME/.config/kitty
mkdir -p $HOME/.config/neofetch
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/picom
mkdir -p $HOME/.config/polybar
mkdir -p $HOME/.config/rofi

echo "Installing themes..."
cd $HOME/Downloads
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

if [ $? -ne 0 ]; then
	echo "zscroll install failed"
	exit
else
	echo "zscroll installed!"
fi

echo "Downloading pulseaudio-control"
cd $HOME/Downloads
git clone https://github.com/marioortizmanero/polybar-pulseaudio-control.git
sudo mv $HOME/Downloads/polybar-pulseaudio-control/pulseaudio-control /usr/local/bin/
sudo chmod +x /usr/local/bin/pulseaudio-control

if [ $? -ne 0 ]; then
	echo "pulseaudio-control install failed"
	exit
else
	echo "pulseaudio-control installed!"
fi

THEME="aqua"
$HOME/.scripts/change-to-$THEME.sh
echo "dotfiles installed!"