#!/bin/sh

LIGHT_THEME="$HOME/.config/sway/theme.d/theme_light"
DARK_THEME="$HOME/.config/sway/theme.d/theme_dark"

ALACRITTY_LIGHT="$HOME/.config/alacritty/alacritty_light.toml"
ALACRITTY_DARK="$HOME/.config/alacritty/alacritty_dark.toml"

CURRENT_HOUR=$(date +%H)

if [ "$CURRENT_HOUR" -ge 7 ] && [ "$CURRENT_HOUR" -lt 20 ]; then
    ln -sf "$LIGHT_THEME" "$HOME/.config/sway/theme"
    ln -sf "$ALACRITTY_LIGHT" "$HOME/.config/alacritty/alacritty.toml"
else
    ln -sf "$DARK_THEME" "$HOME/.config/sway/theme"
    ln -sf "$ALACRITTY_DARK" "$HOME/.config/alacritty/alacritty.toml"
fi

sway reload
