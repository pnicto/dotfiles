#!/bin/bash

session_dir=$(find ~ ~/programs/ ~/work/ ~/learning/ ~/scratch/ ~/.local/bin/ ~/.config/ ~/college/ -mindepth 1 -maxdepth 1 -type d | fzf --cycle --layout=reverse)
exit_status=$?
session_name=$(basename "$session_dir" | tr . _)

if [ $exit_status -eq 0 ]; then
  if ! tmux has-session -t "$session_name" 2>/dev/null; then
    tmux new-session -s "$session_name" -c "$session_dir" -d
  fi
  tmux switch-client -t "$session_name"
else
  exec $SHELL
fi
