#!/bin/bash

SAVE_DIR="$HOME/.coding/dotfiles-git"

cp -a $HOME/.config/cava/* $SAVE_DIR/.config/cava/
cp -a $HOME/.config/dunst/* $SAVE_DIR/.config/dunst/
cp -a $HOME/.config/git/* $SAVE_DIR/.config/git/
cp -a $HOME/.config/i3/* $SAVE_DIR/.config/i3/
cp -a $HOME/.config/kitty/* $SAVE_DIR/.config/kitty/
cp -a $HOME/.config/neofetch/* $SAVE_DIR/.config/neofetch/
cp -a $HOME/.config/nvim/* $SAVE_DIR/.config/nvim/
cp -a $HOME/.config/picom/* $SAVE_DIR/.config/picom/
cp -a $HOME/.config/polybar/* $SAVE_DIR/.config/polybar/
cp -a $HOME/.config/rofi/* $SAVE_DIR/.config/rofi/
cp -a $HOME/.themes/* $SAVE_DIR/themes/
cp -a $HOME/.bashrc $SAVE_DIR/.bashrc
cp -a $HOME/.scripts/change-to-aqua.sh $SAVE_DIR/.scripts/change-to-aqua.sh
cp -a $HOME/.scripts/change-to-juno.sh $SAVE_DIR/.scripts/change-to-juno.sh
cp -a $HOME/.scripts/change-to-yotsuba.sh $SAVE_DIR/.scripts/change-to-yotsuba.sh

echo "Dotfiles saved."
