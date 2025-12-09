#!/bin/bash

SAVE_DIR="$HOME/.coding/dotfiles-git"

cp -r $HOME/.config/cava/* $SAVE_DIR/.config/cava/
cp -r $HOME/.config/dunst/* $SAVE_DIR/.config/dunst/
cp -r $HOME/.config/git/* $SAVE_DIR/.config/git/
cp -r $HOME/.config/i3/* $SAVE_DIR/.config/i3/
cp -r $HOME/.config/kitty/* $SAVE_DIR/.config/kitty/
cp -r $HOME/.config/fastfetch/* $SAVE_DIR/.config/fastfetch/
cp -r $HOME/.config/nvim/* $SAVE_DIR/.config/nvim/
cp -r $HOME/.config/picom/* $SAVE_DIR/.config/picom/
cp -r $HOME/.config/polybar/* $SAVE_DIR/.config/polybar/
cp -r $HOME/.config/rofi/* $SAVE_DIR/.config/rofi/
cp -r $HOME/.themes/* $SAVE_DIR/themes/
cp -r $HOME/.bashrc $SAVE_DIR/.bashrc
cp -r $HOME/.scripts/change-to-aqua.sh $SAVE_DIR/.scripts/change-to-aqua.sh
cp -r $HOME/.scripts/change-to-juno.sh $SAVE_DIR/.scripts/change-to-juno.sh
cp -r $HOME/.scripts/change-to-yotsuba.sh $SAVE_DIR/.scripts/change-to-yotsuba.sh

echo "Dotfiles saved."
