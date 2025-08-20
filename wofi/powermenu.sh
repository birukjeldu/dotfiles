#!/bin/bash

chosen=$(echo -e "Lock\nLogout\nReboot\nShutdown" | wofi --dmenu -p "Power Menu")

case "$chosen" in
  Lock)
    swaylock -f --color 000000 
    ;;
  Logout)
    swaymsg exit
    ;;
  Reboot)
    systemctl reboot
    ;;
  Shutdown)
    systemctl poweroff
    ;;
esac

