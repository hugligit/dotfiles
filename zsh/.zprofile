# if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#       exec startx
# fi
#




# Detect SSH sessions
if [ -n "$SSH_CONNECTION" ]; then
    # Do nothing for SSH
    :

# Local TTY1 → start X
elif [ "$XDG_VTNR" = "1" ] && [ -z "$DISPLAY" ]; then
    exec startx

# Local TTY2+ → fbterm
elif [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -ge 2 ]; then
    # exec fbterm

fi

