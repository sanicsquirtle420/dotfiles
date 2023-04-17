#!/bin/bash

THEME=$(echo -e "Aqua\nKobeni\nMai\nNino\nYotsuba\nEXIT" | dmenu -i -p "Which theme do you want to switch to?")

if [ $THEME != 'EXIT' ]
then
	notify-send "You selected the $THEME theme. All config files have been updated." &&
	cp -r $HOME/i3-themes/$THEME/i3/config $HOME/.config/i3/config &&
        
	cp -r $HOME/i3-themes/$THEME/rofi/launchers/type-2/shared/colors.rasi $HOME/.config/rofi/launchers/type-2/shared/colors.rasi &&
	cp -r $HOME/i3-themes/$THEME/polybar/colors.ini $HOME/.config/polybar/colors.ini
	i3-msg restart

elif [ $THEME == 'EXIT' ]
then
	exit

fi
