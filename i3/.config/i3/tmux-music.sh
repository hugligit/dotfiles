#!/bin/zsh

a=`tmux ls | awk '/Music/{ print$1 }'`
if [[ $a != "Music:" ]]; then
    tmux new-session -d -s Music cmus # --listen 0.0.0.0
    tmux rename-window Audio
    tmux new-window alsamixer
    tmux select-window -t Music:1

fi

tmux attach -t Music
