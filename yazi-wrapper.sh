#!/usr/bin/env sh
set -e

multiple="$1"
directory="$2"
save="$3"
path="$4"
out="$5"

cmd="yazi"

# Define terminal command (adjust to your terminal: foot, kitty, alacritty, ghostty, etc.)
# Note: Ensure the terminal flag for executing a command (-e) is included.
termcmd="foot --app-id=file_chooser -e"

if [ "$save" = "1" ]; then
    set -- --chooser-file="$out" "$path"
elif [ "$directory" = "1" ]; then
    set -- --chooser-file="$out" "$path"
elif [ "$multiple" = "1" ]; then
    set -- --chooser-file="$out" "$path"
else
    set -- --chooser-file="$out" "$path"
fi

# Execute terminal launching yazi with args
exec $termcmd $cmd "$@"


