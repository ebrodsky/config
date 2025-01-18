#!/bin/bash

CURRENT_THEME_PATH="$HOME/.cache/current_theme"
CURRENT_THEME=$(cat "$CURRENT_THEME_PATH")

# Decide the new theme
if [ "$CURRENT_THEME" = "light" ]; then
    NEW_THEME="dark"
else
    NEW_THEME="light"
fi

# Switch Alacritty theme
cp "$HOME/.config/alacritty/alacritty_${NEW_THEME}.toml" "$HOME/.config/alacritty/alacritty.toml"
echo "Alacritty theme switched to $NEW_THEME"

# Switch NVIM theme
NVIM_PIPES="/tmp/nvim-pipes"
[ -d "$NVIM_PIPES" ] || mkdir -p "$NVIM_PIPES"
ls "$NVIM_PIPES" | xargs -I {} sh -c "nvim --server $NVIM_PIPES/{} --remote-send ':Theme $NEW_THEME<CR>'"
echo "Nvim theme switched to $NEW_THEME"

echo "$NEW_THEME" > "$CURRENT_THEME_PATH"

