#!/usr/bin/env bash

# Define options
options=" Power Off\n Reboot\n Lock\n Logout\n Suspend\nH Hibernate"

# Show the menu
choice=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu")

case "$choice" in
    " Power Off") systemctl poweroff ;;
    " Reboot") systemctl reboot ;;
    " Lock") i3lock ;;
    " Logout") i3-msg exit ;; # change this to your DE/WM logout command
    " Suspend") systemctl suspend ;;
    "H Hibernate") systemctl hibernate ;;
    *) exit 1 ;;
esac
