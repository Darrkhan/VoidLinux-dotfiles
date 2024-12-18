#!/bin/sh

LIGHT_THEME="$HOME/.config/sway/theme.d/theme_light"
DARK_THEME="$HOME/.config/sway/theme.d/theme_dark"
CURRENT_HOUR=$(date +%H)

if [ "$CURRENT_HOUR" -ge 7 ] && [ "$CURRENT_HOUR" -lt 20 ]; then
    ln -sf "$LIGHT_THEME" "$HOME/.config/sway/theme"
else
    ln -sf "$DARK_THEME" "$HOME/.config/sway/theme"
fi

sway reload
