#!/bin/bash

config_name="Config"
notes_name="Notes"

current_session=$(tmux display-message -p '#S')

tmux has-session -t=$config_name 2> /dev/null
if [ $? -ne 0 ]; then
  tmux new-session -d -c $XDG_CONFIG_HOME -s $config_name
  tmux switch -t $config_name
  tmux send-keys -t $config_name "$EDITOR ." C-m
fi

tmux has-session -t=$notes_name 2> /dev/null
if [ $? -ne 0 ]; then
  tmux new-session -d -c $HOME/.notes -s $notes_name
  tmux switch -t $notes_name
  tmux send-keys -t $notes_name "$EDITOR ." C-m
fi

tmux switch -t $current_session
