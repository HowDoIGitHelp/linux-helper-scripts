#!/bin/bash
if niri msg windows | grep -q "App ID: \"persistentfoot\""; then
    nirius scratchpad-show --app-id=persistentfoot
else
    foot --app-id=persistentfoot &
    sleep 0.2
    nirius scratchpad-toggle --app-id=persistentfoot
    nirius scratchpad-show --app-id=persistentfoot
fi
