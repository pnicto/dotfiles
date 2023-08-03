#!/bin/bash

session_dir=$(find ~ ~/programs/ ~/work/ ~/learning/ ~/playground/ ~/.local/bin/ ~/.config/ "/run/media/hans/OS/Users/ydkr7/College/Sem 4/" -mindepth 1 -maxdepth 1 -type d | fzf)
session_name=$(basename "$session_dir" | tr . _)

if ! tmux has-session -t "$session_name" 2>/dev/null; then
    tmux new-session -s "$session_name" -c "$session_dir" -d
fi

tmux switch-client -t "$session_name"
