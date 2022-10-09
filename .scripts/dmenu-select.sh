#!/bin/bash

#!/bin/bash

THEME=$(echo -e "Aqua\nYotsuba\nMai\nEXIT" | dmenu -i -p "Which theme do you want to switch to?")

if [ $THEME == 'Aqua' ]
then
	notify-send "You selected the $THEME theme. All config files have been updated." &&
	cp -r $HOME/i3-themes/aqua/i3/config $HOME/.config/i3/config &&
        
	cp -r $HOME/i3-themes/aqua/rofi/launchers/type-2/shared/colors.rasi $HOME/.config/rofi/launchers/type-2/shared/colors.rasi &&
	cp -r $HOME/i3-themes/aqua/polybar/colors.ini $HOME/.config/polybar/colors.ini
	i3-msg restart

elif [ $THEME == 'Yotsuba' ]
then
	notify-send "You selected the $THEME theme. All config files have been updated." &&
	cp -r $HOME/i3-themes/yotsuba/i3/config $HOME/.config/i3/config &&
         
        cp -r $HOME/i3-themes/yotsuba/rofi/launchers/type-2/shared/colors.rasi $HOME/.config/rofi/launchers/type-2/shared/colors.rasi &&
	cp -r $HOME/i3-themes/yotsuba/polybar/colors.ini $HOME/.config/polybar/colors.ini
	i3-msg restart

elif [ $THEME == 'Mai' ]
then
        notify-send "You selected the $THEME theme. All config files have been updated." &&
        cp -r $HOME/i3-themes/mai/i3/config $HOME/.config/i3/config &&
         
        cp -r $HOME/i3-themes/mai/rofi/launchers/type-2/shared/colors.rasi $HOME/.config/rofi/launchers/type-2/shared/colors.rasi &&
        cp -r $HOME/i3-themes/mai/polybar/colors.ini $HOME/.config/polybar/colors.ini
	i3-msg restart

elif [ $THEME == 'EXIT' ]
then
	exit

fi
