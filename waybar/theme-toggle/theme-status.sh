#!/bin/bash

CURRENT_THEME_PATH="$HOME/.cache/current_theme"
CURRENT_THEME=$(cat "$CURRENT_THEME_PATH")

# Choose icons you like, for example:
# "☀" for sun and "☾" for moon
# Alternatively, you can use something else like Unicode emojis: "🌞" or "🌑"
if [ "$CURRENT_THEME" = "light" ]; then
    #echo "🌑"
    echo "🔆"
elif [ "$CURRENT_THEME" = "dark" ]; then
    #echo "🌔"
    echo "🌕"
fi
