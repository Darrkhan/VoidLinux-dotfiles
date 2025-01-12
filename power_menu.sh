#!/bin/bash

chosen=$(echo -e " Lock\n⏾ Suspend\n Reboot\n Poweroff" | fuzzel --dmenu --prompt "Power Menu" -P 10)

case $chosen in
    " Lock") swaylock --image $HOME/Pictures/blurred_wallpaper_void.jpg ;;
    "⏾ Suspend") loginctl suspend ;;
    " Reboot") loginctl reboot ;;
    " Poweroff") loginctl poweroff ;;
esac

