#!/bin/bash

if [ "$MACHINE_NAME" == "x220T" ]; then
	i3-msg "exec --no-startup-id 'xmodmap ~/.Xmodmap'"
	i3-msg "set bindsym XF86RotateWindows exec xrandr --output LVDS-1 --rotate inverted"
	i3-msg "set bindsym XF86TaskPane exec xrandr --output LVDS-1 --rotate normal":

elif [ "$MACHINE_NAME" == "somkthine" ]; then
	i3-msg "set $mod Mod1"
fi

# xmodmap -pke | grep 161
