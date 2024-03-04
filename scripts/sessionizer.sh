#!/usr/bin/env bash

# taken and hopefully improved from the primagen

if [[ $# -eq 1 ]]; then
	selected=$1
else
  # selected=$((echo "system config $(find ~/projects -mindepth 1 -maxdepth 1 -type d)") | fzf)
  selected=$((echo -e "system\nconfig\n$(find ~/projects ~/personal_projects/ -mindepth 1 -maxdepth 1 -type d)") | fzf)
fi

if [[ -z $selected ]]; then
	exit 0
fi

selected_name=$(basename $selected | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
  # outside linux
	tmux new-session -s $selected_name -c $selected
fi

if ! tmux has-session -t=$selected_name 2>/dev/null; then
  # new session from inside tmux
	tmux new-session -ds $selected_name -c $selected 
  # not existin  in order to switch
fi

tmux switch-client -t $selected_name

echo $selected
