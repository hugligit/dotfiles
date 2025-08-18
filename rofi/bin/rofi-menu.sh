#!/usr/bin/env bash

# Define menu options (labels)
options="\
Lock Screen\n\
Change Background\n\
\n\
Sleep\n\
Sleep & Lock\n\
Shutdown"

# Show menu and capture choice
chosen="$(echo -e "$options" | rofi -dmenu -p "Choose:")"

case "$chosen" in
    "Lock Screen")
        ~/bin/blank_screen.sh
        ;;
    "Change Background")
        ~/System/scripts/change_background.sh
        ;;
    "Sleep")
        systemctl suspend
        ;;
    "Sleep & Lock")
        i3lock -c 000022 && systemctl suspend
        ;;
    "Shutdown")
        systemctl poweroff
        ;;
esac

##!/bin/sh

#menu_items="\
#Terminal ; utilities-terminal      ; alacritty
#Browser  ; internet-web-browser    ; firefox
#Files    ; system-file-manager     ; thunar
#Editor   ; accessories-text-editor ; vim
#"

## Show menu and get selection
#choice=$(printf '%s\n' "$menu_items" | cut -d';' -f1 | rofi -dmenu -p "Select action:")

## Find the corresponding command
#cmd=$(printf '%s\n' "$menu_items" | awk -F';' -v sel="$choice" '$1==sel {print $3}')

## Run the command
#[ -n "$cmd" ] && $cmd

