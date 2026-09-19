#!/bin/bash
if niri msg windows | grep -q "App ID: \"persistentfoot\""; then
    nirius scratchpad-show --app-id=persistentfoot
else
    /home/rub/.local/bin/kitty --class=persistentfoot &
    sleep 0.5
    nirius scratchpad-toggle --app-id=persistentfoot
    nirius scratchpad-show --app-id=persistentfoot
fi
