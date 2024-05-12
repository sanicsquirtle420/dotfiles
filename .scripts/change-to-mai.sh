#!/bin/bash

THEME="Mai"

notify-send "You selected the $THEME theme. All config files have been updated." &&
	cp -r $HOME/.themes/$THEME/i3/colors.conf $HOME/.config/i3/colors.conf &&
	cp -r $HOME/.themes/$THEME/rofi/colors.rasi $HOME/.config/rofi/colors.rasi &&
	cp -r $HOME/.themes/$THEME/polybar/colors.ini $HOME/.config/polybar/colors.ini &&
	i3-msg-restart
