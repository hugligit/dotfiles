#!/bin/sh

BACKGROUNDS=$HOME/Pictures/System/backgrounds/
i=$(ls $BACKGROUNDS/*jpeg | shuf -n 1)

feh --bg-fill $i

# feh  --bg-fill '/home/marcel/Pictures/System/background.jpg' 
