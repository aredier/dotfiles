#!/usr/bin/env bash

# taken and hopefully improved from the primagen

if [[ $# -eq 1 ]]; then
	selected=$1
else
	selected=$(find ~/projects ~/.config/ -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $selected ]]; then
	exit 0
fi

selected_name=$(basename $selected | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
	echo "new session from outside tmux"
	tmux new-session -s $selected_name -c $selected setup_tmux.sh
	exit 0
fi

if ! tmux has-session -t=$selected_name 2>/dev/null; then
	echo "new session from inside tmux"
	tmux new-session -ds $selected_name -c $selected setup_tmux.sh
	exit 0
fi

echo "switching session"
tmux switch-client -t $selected_name

echo $selected
