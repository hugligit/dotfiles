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

# *color0:                 $COLOUR_BASE02
# *color1:                 $COLOUR_RED
# *color2:                 $COLOUR_GREEN
# *color3:                 $COLOUR_YELLOW
# *color4:                 $COLOUR_BLUE
# *color5:                 $COLOUR_MAGENTA
# *color6:                 $COLOUR_CYAN
# *color7:                 $COLOUR_BASE2
# *color8:                 $COLOUR_BASE03
# *color9:                 $COLOUR_ORANGE
# *color10:                $COLOUR_BASE01
# *color11:                $COLOUR_BASE00
# *color12:                $COLOUR_BASE0
# *color13:                $COLOUR_VIOLET
# *color14:                $COLOUR_BASE1
# *color15:                $COLOUR_BASE3
# URxvt*fading:                 40
# URxvt*foreground:             $COLOUR_BASE0
# URxvt*background:             $COLOUR_BASE03
# URxvt*cursorColor:            $COLOUR_BASE1
# URxvt*pointerColorBackground: $COLOUR_BASE01
# URxvt*pointerColorForeground: $COLOUR_BASE1
# URxvt*fadeColor:              $COLOUR_BASE03
# URxvt*font:              xft:$FONT:pixelsize=$SIZE_DEFAULT:antialias=true:hinting=true
# URxvt*boldFont:          xft:$FONT:bold:pixelsize=$SIZE_DEFAULT:antialias=true:hinting=true
# URxvt*buffered:          true
# URxvt*depth:             32
# URxvt*intensityStyles:   true
# URxvt*jumpScroll:        true
# URxvt*saveLines:         12000
# URxvt*scrollBar:         false
# URxvt*scrollBar_right:   false
# URxvt*scrollstyle:       rxvt
# URxvt*shading:           75
# URxvt*skipScroll:        true
# URxvt*termName:          rxvt-256color
# URxvt*tintColor:         Blue
# URxvt*transparent:       false
# URxvt*urgentOnBell:      true
# URxvt*visualBell:        false

# ! URLs in rxvt
# URxvt*perl-ext-common:   default,matcher
# URxvt*urlLauncher:       /usr/bin/firefox
# URxvt*keysym.C-o:        perl:matcher
# URxvt*matcher.button:    1

# ! URxvt.keysym.C-1:        command:\
# ! \033]10;$COLOUR_BASE0\007\033]11;$COLOUR_BASE03\007\
# ! \033]12;#93a1a1\007\033]13;#002b36\007\033]17;#073642\007\
# ! \033]4;0;$COLOUR_BASE02;7;$COLOUR_BASE2;15;$COLOUR_BASE3;8;$COLOUR_BASE03\007

# ! URxvt.keysym.C-2:        command:\
# ! \033]10;$COLOUR_BASE00\007\033]11;$COLOUR_BASE3\007\
# ! \033]12;#93a1a1\007\033]13;#002b36\007\033]17;#073642\007\
# ! \033]4;0;$COLOUR_BASE2;7;$COLOUR_BASE02;15;$COLOUR_BASE03;8;$COLOUR_BASE3\007


# URxvt.keysym.C-minus:    command:\033]710;xft:$FONT:pixelsize=$SIZE_SMALL\007\033]711;xft:$FONT:bold:pixelsize=$SIZE_SMALL\007
# URxvt.keysym.C-0:        command:\033]710;xft:$FONT:pixelsize=$SIZE_DEFAULT\007\033]711;xft:$FONT:bold:pixelsize=$SIZE_DEFAULT\007
# URxvt.keysym.C-equal:    command:\033]710;xft:$FONT:pixelsize=$SIZE_BIG\007\033]711;xft:$FONT:bold:pixelsize=$SIZE_BIG\007


# xscreensaver.Dialog.foreground:         #ffffff
# xscreensaver.pointerHysteresis: 2000

# EOF

xsetroot -cursor_name left_ptr
setxkbmap -layout "us,sk(qwerty),de(qwerty),gb,ca" -option "grp:shifts_toggle"
# $HOME/bin/external_ip &
xbindkeys &
xchaikeys &
xscreensaver -no-splash &
unclutter -root -jitter 100 &
# xrandr --output VGA-1 --mode 1920x1080 --primary --output HDMI-1 --mode 1920x1080 --right-of VGA-1
sh ~/.fehbg
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
