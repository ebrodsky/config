#!/bin/zsh

CURRENT_THEME_PATH="$HOME/.cache/current_theme"
CURRENT_THEME=$(cat "$CURRENT_THEME_PATH")

# Decide the new theme
if [ "$CURRENT_THEME" = "light" ]; then
    NEW_THEME="dark"
elif [ "$CURRENT_THEME" = "dark" ]; then
    NEW_THEME="light"
fi

source "$HOME/.config/zsh/.zshrc"
echo "Switching to $NEW_THEME theme"
switch_theme "$NEW_THEME"

#echo "$NEW_THEME" > "$CURRENT_THEME_PATH"


NEW_THEME=$(switch_theme "$NEW_THEME")
echo "$NEW_THEME" > "$CURRENT_THEME_PATH"
