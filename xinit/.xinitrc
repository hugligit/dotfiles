COLOUR_BASE03="#002b36"
COLOUR_BASE03="#111111"
COLOUR_BASE02="#073642"
COLOUR_BASE01="#586e75"
COLOUR_BASE00="#657b83"
COLOUR_BASE0="#839496"
COLOUR_BASE1="#93a1a1"
COLOUR_BASE2="#eee8b5"
COLOUR_BASE3="#fdf6d3"
COLOUR_YELLOW="#b58900"
COLOUR_ORANGE="#cb4b16"
COLOUR_RED="#dc322f"
COLOUR_MAGENTA="#d33682"
COLOUR_VIOLET="#6c71c4"
COLOUR_BLUE="#268bd2"
COLOUR_CYAN="#2aa198"
COLOUR_GREEN="#859900"

SIZE_DEFAULT=20
SIZE_SMALL=16
SIZE_BIG=32
FONT="DejaVu Sans Mono"



xrdb -merge .Xresources

# xrdb -merge << EOF
# Xft.antialias: true
# Xft.hinting: true
# Xft.rgba: rgb
# Xft.hintstyle: hintfull










xsetroot -cursor_name left_ptr
setxkbmap -layout "us,sk(qwerty),de(qwerty),gb,ca" -option "grp:shifts_toggle"
setxkbmap -option caps:escape
# $HOME/bin/external_ip &
xbindkeys &
# xchaikeys &
# xscreensaver -no-splash &
unclutter -root -jitter 100 &
# xrandr --output VGA-1 --mode 1920x1080 --primary --output HDMI-1 --mode 1920x1080 --right-of VGA-1
# sh ~/.fehbg
feh --no-fehbg --bg-fill '/home/marcel/Pictures/System/background.jpg' 
# ~/.conky/conky.sh &

if [ -f $HOME/.xmodmaprc ]; then
    /usr/bin/xmodmap $HOME/.xmodmaprc
fi


# export LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

# ibus
# export XMODIFIERS='@im=ibus'
# export GTK_IM_MODULE=ibus
# export QT_IM_MODULE=ibus


export XMODIFIERS=@im=SCIM
export GTK_IM_MODULE="scim"
export QT_IM_MODULE="scim"
scim -d

# exec xmonad
exec i3
# exec startlxde

# vim: ft=sh
