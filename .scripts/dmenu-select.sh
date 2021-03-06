#!/bin/bash

THEME=$(echo -e "Aqua\nYotsuba\nMai\nEXIT" | dmenu -i -p "Which theme do you want to switch to?")

if [ $THEME == 'Aqua' ]
then
	notify-send "You selected the $THEME theme. All config files have been updated." &&
	cp -r $HOME/Documents/i3-themes/aqua/i3/config $HOME/.config/i3/config &&
        cp -r $HOME/Documents/i3-themes/aqua/polybar/config.ini $HOME/.config/polybar/config.ini &&
	cp -r $HOME/Documents/i3-themes/aqua/rofi/config.rasi $HOME/.config/rofi/config.rasi &&
	nitrogen --set-scaled --random $HOME/.wallpapers/Aqua/
	i3-msg restart

elif [ $THEME == 'Yotsuba' ]
then
	notify-send "You selected the $THEME theme. All config files have been updated." &&
	cp -r $HOME/Documents/i3-themes/yotsuba/i3/config $HOME/.config/i3/config &&
        cp -r $HOME/Documents/i3-themes/yotsuba/polybar/config.ini $HOME/.config/polybar/config.ini &&
        cp -r $HOME/Documents/i3-themes/yotsuba/rofi/config.rasi $HOME/.config/rofi/config.rasi &&
	nitrogen --set-scaled --random $HOME/.wallpapers/Yotsuba/
	i3-msg restart

elif [ $THEME == 'Mai' ]
then
        notify-send "You selected the $THEME theme. All config files have been updated." &&
        cp -r $HOME/Documents/i3-themes/mai/i3/config $HOME/.config/i3/config &&
        cp -r $HOME/Documents/i3-themes/mai/polybar/config.ini $HOME/.config/polybar/config.ini &&
        cp -r $HOME/Documents/i3-themes/mai/rofi/config.rasi $HOME/.config/rofi/config.rasi &&
        nitrogen --set-scaled --random $HOME/.wallpapers/Mai/
	i3-msg restart

elif [ $THEME == 'EXIT' ]
then
	exit

fi
