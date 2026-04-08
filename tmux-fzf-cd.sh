#!/usr/bin/env bash

# Use $PROJECT_ROOT if set, fallback to current directory
ROOT="${PROJECT_ROOT:-$(pwd)}"

# Pick a directory
selected=$(find "$ROOT" -mindepth 1 -maxdepth 1 -type d \
  ! -path '*/\.*' \
  ! -path '*/node_modules/*' \
  ! -path '*/__pycache__/*' \
  2>/dev/null | fzf --prompt="project > " --height=40% --border)

[ -z "$selected" ] && exit 0

# Session name = selected directory's basename
# tmux doesn't allow dots or spaces in session names, so we replace them
session_name=$(basename "$selected" | tr ' .' '_')

# If session already exists, switch to it
# If not, create it with the selected dir as working directory
if [ -n "$TMUX" ]; then
  tmux new-window -c "$selected"
else
  if tmux has-session -t "$session_name" 2>/dev/null; then
    tmux attach-session -t "$session_name"
  else
    tmux new-session -s "$session_name" -c "$selected"
  fi
fi
